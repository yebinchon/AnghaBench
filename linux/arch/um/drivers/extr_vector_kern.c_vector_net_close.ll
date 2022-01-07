; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_net_close.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_net_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vector_private = type { i64, i64, i32, i32, i32, %struct.TYPE_2__*, i32*, i32*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vector_net_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_net_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vector_private*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.vector_private* @netdev_priv(%struct.net_device* %6)
  store %struct.vector_private* %7, %struct.vector_private** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @netif_stop_queue(%struct.net_device* %8)
  %10 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %11 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %10, i32 0, i32 13
  %12 = call i32 @del_timer(i32* %11)
  %13 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %14 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %13, i32 0, i32 5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %144

18:                                               ; preds = %1
  %19 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %20 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %25 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @um_free_irq(i64 %26, %struct.net_device* %27)
  %29 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %30 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %23, %18
  %32 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %33 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %38 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @um_free_irq(i64 %39, %struct.net_device* %40)
  %42 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %43 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %46 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %45, i32 0, i32 12
  %47 = call i32 @tasklet_kill(i32* %46)
  %48 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %49 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %48, i32 0, i32 5
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %56 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @os_close_file(i32 %59)
  %61 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %62 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %61, i32 0, i32 5
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 -1, i32* %64, align 8
  br label %65

65:                                               ; preds = %54, %44
  %66 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %67 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %66, i32 0, i32 5
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %74 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %73, i32 0, i32 5
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @os_close_file(i32 %77)
  %79 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %80 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %79, i32 0, i32 5
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 -1, i32* %82, align 4
  br label %83

83:                                               ; preds = %72, %65
  %84 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %85 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %84, i32 0, i32 11
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = call i32 @kfree(%struct.TYPE_2__* %86)
  %88 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %89 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %88, i32 0, i32 5
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = call i32 @kfree(%struct.TYPE_2__* %92)
  %94 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %95 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %94, i32 0, i32 10
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = call i32 @kfree(%struct.TYPE_2__* %96)
  %98 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %99 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %98, i32 0, i32 9
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = call i32 @kfree(%struct.TYPE_2__* %100)
  %102 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %103 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %102, i32 0, i32 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = call i32 @kfree(%struct.TYPE_2__* %104)
  %106 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %107 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %83
  %111 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %112 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @destroy_queue(i32* %113)
  br label %115

115:                                              ; preds = %110, %83
  %116 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %117 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %122 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %121, i32 0, i32 6
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @destroy_queue(i32* %123)
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %127 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %126, i32 0, i32 5
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = call i32 @kfree(%struct.TYPE_2__* %128)
  %130 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %131 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %130, i32 0, i32 5
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %131, align 8
  %132 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %133 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %132, i32 0, i32 4
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @spin_lock_irqsave(i32* %133, i64 %134)
  %136 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %137 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %136, i32 0, i32 2
  store i32 0, i32* %137, align 8
  %138 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %139 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %138, i32 0, i32 3
  store i32 0, i32* %139, align 4
  %140 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %141 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %140, i32 0, i32 4
  %142 = load i64, i64* %5, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* %141, i64 %142)
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %125, %17
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.vector_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @um_free_irq(i64, %struct.net_device*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @os_close_file(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @destroy_queue(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

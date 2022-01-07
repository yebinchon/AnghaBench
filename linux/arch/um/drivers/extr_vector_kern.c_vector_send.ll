; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_send.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_queue = type { i32, i32, i32, i32, i32, %struct.mmsghdr*, i32 }
%struct.mmsghdr = type { i32 }
%struct.vector_private = type { i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"sendmmsg err=%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_queue*)* @vector_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_send(%struct.vector_queue* %0) #0 {
  %2 = alloca %struct.vector_queue*, align 8
  %3 = alloca %struct.vector_private*, align 8
  %4 = alloca %struct.mmsghdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vector_queue* %0, %struct.vector_queue** %2, align 8
  %8 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %9 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.vector_private* @netdev_priv(i32 %10)
  store %struct.vector_private* %11, %struct.vector_private** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %13 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %16 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %15, i32 0, i32 3
  %17 = call i64 @spin_trylock(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %149

19:                                               ; preds = %1
  %20 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %21 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %20, i32 0, i32 6
  %22 = call i64 @spin_trylock(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %145

24:                                               ; preds = %19
  %25 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %26 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %29 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %28, i32 0, i32 6
  %30 = call i32 @spin_unlock(i32* %29)
  br label %31

31:                                               ; preds = %143, %24
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %144

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %37 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %36, i32 0, i32 5
  %38 = load %struct.mmsghdr*, %struct.mmsghdr** %37, align 8
  store %struct.mmsghdr* %38, %struct.mmsghdr** %4, align 8
  %39 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %40 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mmsghdr*, %struct.mmsghdr** %4, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %42, i64 %43
  store %struct.mmsghdr* %44, %struct.mmsghdr** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %47 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %45, %48
  %50 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %51 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %34
  %55 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %56 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %59 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %54, %34
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %67 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %66, i32 0, i32 5
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mmsghdr*, %struct.mmsghdr** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @uml_vector_sendmmsg(i32 %70, %struct.mmsghdr* %71, i32 %72, i32 0)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %79 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %65, %62
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = call i64 (...) @net_ratelimit()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %88 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @netdev_err(i32 %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %83
  %93 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %94 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %80
  %97 = load i32, i32* %5, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %96
  %100 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @consume_vector_skbs(%struct.vector_queue* %100, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %105 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %103, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %112 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %99
  %115 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %116 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %118, %119
  %121 = ashr i32 %120, 1
  %122 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %123 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  br label %125

125:                                              ; preds = %114, %96
  %126 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %127 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @netif_trans_update(i32 %128)
  %130 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %131 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @netif_wake_queue(i32 %132)
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %125
  %138 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %139 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %144

143:                                              ; preds = %125
  br label %31

144:                                              ; preds = %137, %31
  br label %145

145:                                              ; preds = %144, %19
  %146 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %147 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %146, i32 0, i32 3
  %148 = call i32 @spin_unlock(i32* %147)
  br label %153

149:                                              ; preds = %1
  %150 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %151 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %150, i32 0, i32 2
  %152 = call i32 @tasklet_schedule(i32* %151)
  br label %153

153:                                              ; preds = %149, %145
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local %struct.vector_private* @netdev_priv(i32) #1

declare dso_local i64 @spin_trylock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @uml_vector_sendmmsg(i32, %struct.mmsghdr*, i32, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @consume_vector_skbs(%struct.vector_queue*, i32) #1

declare dso_local i32 @netif_trans_update(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

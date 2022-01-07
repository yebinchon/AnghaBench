; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_setup_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_setup_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sh_cmt_device* }
%struct.sh_cmt_device = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"ch%u: registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_cmt_channel*, i32, i32, i32, i32, %struct.sh_cmt_device*)* @sh_cmt_setup_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_setup_channel(%struct.sh_cmt_channel* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.sh_cmt_device* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sh_cmt_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sh_cmt_device*, align 8
  %14 = alloca i32, align 4
  store %struct.sh_cmt_channel* %0, %struct.sh_cmt_channel** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.sh_cmt_device* %5, %struct.sh_cmt_device** %13, align 8
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %136

21:                                               ; preds = %17, %6
  %22 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %13, align 8
  %23 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %24 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %23, i32 0, i32 9
  store %struct.sh_cmt_device* %22, %struct.sh_cmt_device** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %27 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %30 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %33 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %13, align 8
  %35 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %82 [
    i32 130, label %39
    i32 129, label %51
    i32 128, label %51
    i32 132, label %63
    i32 131, label %63
  ]

39:                                               ; preds = %21
  %40 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %13, align 8
  %41 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 2
  %44 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %45 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul i32 %46, 6
  %48 = add i32 %43, %47
  %49 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %50 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  br label %82

51:                                               ; preds = %21, %21
  %52 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %13, align 8
  %53 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 16
  %56 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %57 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul i32 %58, 16
  %60 = add i32 %55, %59
  %61 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %62 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 8
  br label %82

63:                                               ; preds = %21, %21
  %64 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %13, align 8
  %65 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %68 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul i32 %69, 256
  %71 = add i32 %66, %70
  %72 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %73 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 4
  %74 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %75 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 16
  %78 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %79 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 8
  %80 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %81 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %80, i32 0, i32 2
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %21, %63, %51, %39
  %83 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %13, align 8
  %84 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp eq i64 %88, 32
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %92 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %91, i32 0, i32 3
  store i32 -1, i32* %92, align 4
  br label %103

93:                                               ; preds = %82
  %94 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %13, align 8
  %95 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 1, %98
  %100 = sub nsw i32 %99, 1
  %101 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %102 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %93, %90
  %104 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %105 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %108 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %110 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %109, i32 0, i32 6
  %111 = call i32 @raw_spin_lock_init(i32* %110)
  %112 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %113 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %13, align 8
  %114 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = call i32 @dev_name(i32* %116)
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @sh_cmt_register(%struct.sh_cmt_channel* %112, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %103
  %124 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %13, align 8
  %125 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %129 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %14, align 4
  store i32 %132, i32* %7, align 4
  br label %136

133:                                              ; preds = %103
  %134 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %8, align 8
  %135 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %134, i32 0, i32 5
  store i32 0, i32* %135, align 4
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %133, %123, %20
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @sh_cmt_register(%struct.sh_cmt_channel*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

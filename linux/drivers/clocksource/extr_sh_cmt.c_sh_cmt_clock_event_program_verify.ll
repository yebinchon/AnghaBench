; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clock_event_program_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clock_event_program_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_channel = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@FLAG_REPROGRAM = common dso_local global i32 0, align 4
@FLAG_SKIPEVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ch%u: too long delay\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_cmt_channel*, i32)* @sh_cmt_clock_event_program_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_cmt_clock_event_program_verify(%struct.sh_cmt_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_cmt_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sh_cmt_channel* %0, %struct.sh_cmt_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %11 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %14 = call i32 @sh_cmt_get_counter(%struct.sh_cmt_channel* %13, i32* %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @FLAG_REPROGRAM, align 4
  %16 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %17 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @FLAG_SKIPEVENT, align 4
  %24 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %25 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %108

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %105, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %41 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %46 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %33
  %49 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @sh_cmt_write_cmcor(%struct.sh_cmt_channel* %49, i32 %50)
  %52 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %53 = call i32 @sh_cmt_get_counter(%struct.sh_cmt_channel* %52, i32* %9)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %59 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32, i32* @FLAG_SKIPEVENT, align 4
  %64 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %65 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %108

68:                                               ; preds = %56, %48
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %74 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %108

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %82 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %108

83:                                               ; preds = %75
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = shl i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %90

89:                                               ; preds = %83
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %90
  %94 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %95 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %94, i32 0, i32 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %101 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_warn(i32* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %93, %90
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %33, label %108

108:                                              ; preds = %22, %105, %79, %71, %62
  ret void
}

declare dso_local i32 @sh_cmt_get_counter(%struct.sh_cmt_channel*, i32*) #1

declare dso_local i32 @sh_cmt_write_cmcor(%struct.sh_cmt_channel*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

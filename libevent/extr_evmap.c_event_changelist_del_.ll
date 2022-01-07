; ModuleID = '/home/carl/AnghaBench/libevent/extr_evmap.c_event_changelist_del_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evmap.c_event_changelist_del_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.event_changelist }
%struct.event_changelist = type { i32 }
%struct.event_changelist_fdinfo = type { i32 }
%struct.event_change = type { i16, i8*, i8*, i8* }

@EV_CHANGE_DEL = common dso_local global i16 0, align 2
@EV_ET = common dso_local global i16 0, align 2
@EV_READ = common dso_local global i16 0, align 2
@EV_SIGNAL = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@EV_CLOSED = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_changelist_del_(%struct.event_base* %0, i32 %1, i16 signext %2, i16 signext %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca %struct.event_changelist*, align 8
  %13 = alloca %struct.event_changelist_fdinfo*, align 8
  %14 = alloca %struct.event_change*, align 8
  %15 = alloca i8*, align 8
  store %struct.event_base* %0, %struct.event_base** %7, align 8
  store i32 %1, i32* %8, align 4
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store i8* %4, i8** %11, align 8
  %16 = load %struct.event_base*, %struct.event_base** %7, align 8
  %17 = getelementptr inbounds %struct.event_base, %struct.event_base* %16, i32 0, i32 0
  store %struct.event_changelist* %17, %struct.event_changelist** %12, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = bitcast i8* %18 to %struct.event_changelist_fdinfo*
  store %struct.event_changelist_fdinfo* %19, %struct.event_changelist_fdinfo** %13, align 8
  %20 = load i16, i16* @EV_CHANGE_DEL, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* %10, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* @EV_ET, align 2
  %25 = sext i16 %24 to i32
  %26 = and i32 %23, %25
  %27 = or i32 %21, %26
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %15, align 8
  %30 = load %struct.event_base*, %struct.event_base** %7, align 8
  %31 = call i32 @event_changelist_check(%struct.event_base* %30)
  %32 = load %struct.event_changelist*, %struct.event_changelist** %12, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i16, i16* %9, align 2
  %35 = load %struct.event_changelist_fdinfo*, %struct.event_changelist_fdinfo** %13, align 8
  %36 = call %struct.event_change* @event_changelist_get_or_construct(%struct.event_changelist* %32, i32 %33, i16 signext %34, %struct.event_changelist_fdinfo* %35)
  store %struct.event_change* %36, %struct.event_change** %14, align 8
  %37 = load %struct.event_base*, %struct.event_base** %7, align 8
  %38 = call i32 @event_changelist_check(%struct.event_base* %37)
  %39 = load %struct.event_change*, %struct.event_change** %14, align 8
  %40 = icmp ne %struct.event_change* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %123

42:                                               ; preds = %5
  %43 = load i16, i16* %10, align 2
  %44 = sext i16 %43 to i32
  %45 = load i16, i16* @EV_READ, align 2
  %46 = sext i16 %45 to i32
  %47 = load i16, i16* @EV_SIGNAL, align 2
  %48 = sext i16 %47 to i32
  %49 = or i32 %46, %48
  %50 = and i32 %44, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %42
  %53 = load %struct.event_change*, %struct.event_change** %14, align 8
  %54 = getelementptr inbounds %struct.event_change, %struct.event_change* %53, i32 0, i32 0
  %55 = load i16, i16* %54, align 8
  %56 = sext i16 %55 to i32
  %57 = load i16, i16* @EV_READ, align 2
  %58 = sext i16 %57 to i32
  %59 = load i16, i16* @EV_SIGNAL, align 2
  %60 = sext i16 %59 to i32
  %61 = or i32 %58, %60
  %62 = and i32 %56, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %52
  %65 = load %struct.event_change*, %struct.event_change** %14, align 8
  %66 = getelementptr inbounds %struct.event_change, %struct.event_change* %65, i32 0, i32 3
  store i8* null, i8** %66, align 8
  br label %71

67:                                               ; preds = %52
  %68 = load i8*, i8** %15, align 8
  %69 = load %struct.event_change*, %struct.event_change** %14, align 8
  %70 = getelementptr inbounds %struct.event_change, %struct.event_change* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %71, %42
  %73 = load i16, i16* %10, align 2
  %74 = sext i16 %73 to i32
  %75 = load i16, i16* @EV_WRITE, align 2
  %76 = sext i16 %75 to i32
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %72
  %80 = load %struct.event_change*, %struct.event_change** %14, align 8
  %81 = getelementptr inbounds %struct.event_change, %struct.event_change* %80, i32 0, i32 0
  %82 = load i16, i16* %81, align 8
  %83 = sext i16 %82 to i32
  %84 = load i16, i16* @EV_WRITE, align 2
  %85 = sext i16 %84 to i32
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %79
  %89 = load %struct.event_change*, %struct.event_change** %14, align 8
  %90 = getelementptr inbounds %struct.event_change, %struct.event_change* %89, i32 0, i32 2
  store i8* null, i8** %90, align 8
  br label %95

91:                                               ; preds = %79
  %92 = load i8*, i8** %15, align 8
  %93 = load %struct.event_change*, %struct.event_change** %14, align 8
  %94 = getelementptr inbounds %struct.event_change, %struct.event_change* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %91, %88
  br label %96

96:                                               ; preds = %95, %72
  %97 = load i16, i16* %10, align 2
  %98 = sext i16 %97 to i32
  %99 = load i16, i16* @EV_CLOSED, align 2
  %100 = sext i16 %99 to i32
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %96
  %104 = load %struct.event_change*, %struct.event_change** %14, align 8
  %105 = getelementptr inbounds %struct.event_change, %struct.event_change* %104, i32 0, i32 0
  %106 = load i16, i16* %105, align 8
  %107 = sext i16 %106 to i32
  %108 = load i16, i16* @EV_CLOSED, align 2
  %109 = sext i16 %108 to i32
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %103
  %113 = load %struct.event_change*, %struct.event_change** %14, align 8
  %114 = getelementptr inbounds %struct.event_change, %struct.event_change* %113, i32 0, i32 1
  store i8* null, i8** %114, align 8
  br label %119

115:                                              ; preds = %103
  %116 = load i8*, i8** %15, align 8
  %117 = load %struct.event_change*, %struct.event_change** %14, align 8
  %118 = getelementptr inbounds %struct.event_change, %struct.event_change* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %112
  br label %120

120:                                              ; preds = %119, %96
  %121 = load %struct.event_base*, %struct.event_base** %7, align 8
  %122 = call i32 @event_changelist_check(%struct.event_base* %121)
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %120, %41
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @event_changelist_check(%struct.event_base*) #1

declare dso_local %struct.event_change* @event_changelist_get_or_construct(%struct.event_changelist*, i32, i16 signext, %struct.event_changelist_fdinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

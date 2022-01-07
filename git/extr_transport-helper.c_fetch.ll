; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_fetch.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i64, %struct.TYPE_4__*, %struct.helper_data* }
%struct.TYPE_4__ = type { {}* }
%struct.helper_data = type { i64, i64, %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.ref = type { i32 }

@REF_STATUS_UPTODATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"check-connectivity\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cloning\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"update-shallow\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"Ignoring --negotiation-tip because the protocol does not support it.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, i32, %struct.ref**)* @fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch(%struct.transport* %0, i32 %1, %struct.ref** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.transport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref**, align 8
  %8 = alloca %struct.helper_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.transport* %0, %struct.transport** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ref** %2, %struct.ref*** %7, align 8
  %12 = load %struct.transport*, %struct.transport** %5, align 8
  %13 = getelementptr inbounds %struct.transport, %struct.transport* %12, i32 0, i32 2
  %14 = load %struct.helper_data*, %struct.helper_data** %13, align 8
  store %struct.helper_data* %14, %struct.helper_data** %8, align 8
  %15 = load %struct.transport*, %struct.transport** %5, align 8
  %16 = call i32 @get_helper(%struct.transport* %15)
  %17 = load %struct.transport*, %struct.transport** %5, align 8
  %18 = call i64 @process_connect(%struct.transport* %17, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load %struct.transport*, %struct.transport** %5, align 8
  %22 = call i32 @do_take_over(%struct.transport* %21)
  %23 = load %struct.transport*, %struct.transport** %5, align 8
  %24 = getelementptr inbounds %struct.transport, %struct.transport* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.transport*, i32, %struct.ref**)**
  %28 = load i32 (%struct.transport*, i32, %struct.ref**)*, i32 (%struct.transport*, i32, %struct.ref**)** %27, align 8
  %29 = load %struct.transport*, %struct.transport** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ref**, %struct.ref*** %7, align 8
  %32 = call i32 %28(%struct.transport* %29, i32 %30, %struct.ref** %31)
  store i32 %32, i32* %4, align 4
  br label %143

33:                                               ; preds = %3
  %34 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %35 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load %struct.transport*, %struct.transport** %5, align 8
  %40 = call i32 @get_refs_list_using_list(%struct.transport* %39, i32 0)
  br label %41

41:                                               ; preds = %38, %33
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %61, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load %struct.ref**, %struct.ref*** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ref*, %struct.ref** %47, i64 %49
  %51 = load %struct.ref*, %struct.ref** %50, align 8
  %52 = getelementptr inbounds %struct.ref, %struct.ref* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @REF_STATUS_UPTODATE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %42

64:                                               ; preds = %42
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %143

68:                                               ; preds = %64
  %69 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %70 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %75 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.transport*, %struct.transport** %5, align 8
  %81 = call i32 @set_helper_option(%struct.transport* %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %73, %68
  %83 = load %struct.transport*, %struct.transport** %5, align 8
  %84 = getelementptr inbounds %struct.transport, %struct.transport* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.transport*, %struct.transport** %5, align 8
  %89 = call i32 @set_helper_option(%struct.transport* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %92 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.transport*, %struct.transport** %5, align 8
  %98 = call i32 @set_helper_option(%struct.transport* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %90
  %100 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %101 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %108 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = call i8* @expand_list_objects_filter_spec(%struct.TYPE_6__* %109)
  store i8* %110, i8** %11, align 8
  %111 = load %struct.transport*, %struct.transport** %5, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @set_helper_option(%struct.transport* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %106, %99
  %115 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %116 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 @warning(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %114
  %123 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %124 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.transport*, %struct.transport** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.ref**, %struct.ref*** %7, align 8
  %131 = call i32 @fetch_with_fetch(%struct.transport* %128, i32 %129, %struct.ref** %130)
  store i32 %131, i32* %4, align 4
  br label %143

132:                                              ; preds = %122
  %133 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %134 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.transport*, %struct.transport** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.ref**, %struct.ref*** %7, align 8
  %141 = call i32 @fetch_with_import(%struct.transport* %138, i32 %139, %struct.ref** %140)
  store i32 %141, i32* %4, align 4
  br label %143

142:                                              ; preds = %132
  store i32 -1, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %137, %127, %67, %20
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @get_helper(%struct.transport*) #1

declare dso_local i64 @process_connect(%struct.transport*, i32) #1

declare dso_local i32 @do_take_over(%struct.transport*) #1

declare dso_local i32 @get_refs_list_using_list(%struct.transport*, i32) #1

declare dso_local i32 @set_helper_option(%struct.transport*, i8*, i8*) #1

declare dso_local i8* @expand_list_objects_filter_spec(%struct.TYPE_6__*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @fetch_with_fetch(%struct.transport*, i32, %struct.ref**) #1

declare dso_local i32 @fetch_with_import(%struct.transport*, i32, %struct.ref**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

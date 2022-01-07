; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@VERSION_TAG = common dso_local global i8* null, align 8
@COMPTIME = common dso_local global i32 0, align 4
@INSTALL_FOLDER = common dso_local global i8* null, align 8
@SHARED_FOLDER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = call i32 (...) @setup_console()
  %14 = call i32 @time(i32* null)
  store i32 %14, i32* %6, align 4
  %15 = call i64 @hcmalloc(i32 8)
  %16 = inttoptr i64 %15 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %7, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %18 = load i32, i32* @event, align 4
  %19 = call i32 @hashcat_init(%struct.TYPE_20__* %17, i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = call i32 @hcfree(%struct.TYPE_20__* %22)
  store i32 -1, i32* %3, align 4
  br label %119

24:                                               ; preds = %2
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %26 = call i32 @user_options_init(%struct.TYPE_20__* %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %30 = call i32 @hcfree(%struct.TYPE_20__* %29)
  store i32 -1, i32* %3, align 4
  br label %119

31:                                               ; preds = %24
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = call i32 @user_options_getopt(%struct.TYPE_20__* %32, i32 %33, i8** %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %39 = call i32 @hcfree(%struct.TYPE_20__* %38)
  store i32 -1, i32* %3, align 4
  br label %119

40:                                               ; preds = %31
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %42 = call i32 @user_options_sanity(%struct.TYPE_20__* %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %46 = call i32 @hcfree(%struct.TYPE_20__* %45)
  store i32 -1, i32* %3, align 4
  br label %119

47:                                               ; preds = %40
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %10, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i8*, i8** @VERSION_TAG, align 8
  %57 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %59 = call i32 @hcfree(%struct.TYPE_20__* %58)
  store i32 0, i32* %3, align 4
  br label %119

60:                                               ; preds = %47
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %62 = load i8*, i8** @VERSION_TAG, align 8
  %63 = call i32 @welcome_screen(%struct.TYPE_20__* %61, i8* %62)
  store i32 -1, i32* %11, align 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* @COMPTIME, align 4
  %70 = call i64 @hashcat_session_init(%struct.TYPE_20__* %64, i8* %65, i8* %66, i32 %67, i8** %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %106

72:                                               ; preds = %60
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %79 = call i32 @usage_big_print(%struct.TYPE_20__* %78)
  store i32 0, i32* %11, align 4
  br label %105

80:                                               ; preds = %72
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %87 = call i32 @example_hashes(%struct.TYPE_20__* %86)
  store i32 0, i32* %11, align 4
  br label %104

88:                                               ; preds = %80
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %95 = call i32 @backend_info(%struct.TYPE_20__* %94)
  store i32 0, i32* %11, align 4
  br label %103

96:                                               ; preds = %88
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %98 = call i32 @backend_info_compact(%struct.TYPE_20__* %97)
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %100 = call i32 @user_options_info(%struct.TYPE_20__* %99)
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %102 = call i32 @hashcat_session_execute(%struct.TYPE_20__* %101)
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %96, %93
  br label %104

104:                                              ; preds = %103, %85
  br label %105

105:                                              ; preds = %104, %77
  br label %106

106:                                              ; preds = %105, %60
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %108 = call i32 @hashcat_session_destroy(%struct.TYPE_20__* %107)
  %109 = call i32 @time(i32* null)
  store i32 %109, i32* %12, align 4
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @goodbye_screen(%struct.TYPE_20__* %110, i32 %111, i32 %112)
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %115 = call i32 @hashcat_destroy(%struct.TYPE_20__* %114)
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %117 = call i32 @hcfree(%struct.TYPE_20__* %116)
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %106, %55, %44, %37, %28, %21
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @setup_console(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @hashcat_init(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @hcfree(%struct.TYPE_20__*) #1

declare dso_local i32 @user_options_init(%struct.TYPE_20__*) #1

declare dso_local i32 @user_options_getopt(%struct.TYPE_20__*, i32, i8**) #1

declare dso_local i32 @user_options_sanity(%struct.TYPE_20__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @welcome_screen(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @hashcat_session_init(%struct.TYPE_20__*, i8*, i8*, i32, i8**, i32) #1

declare dso_local i32 @usage_big_print(%struct.TYPE_20__*) #1

declare dso_local i32 @example_hashes(%struct.TYPE_20__*) #1

declare dso_local i32 @backend_info(%struct.TYPE_20__*) #1

declare dso_local i32 @backend_info_compact(%struct.TYPE_20__*) #1

declare dso_local i32 @user_options_info(%struct.TYPE_20__*) #1

declare dso_local i32 @hashcat_session_execute(%struct.TYPE_20__*) #1

declare dso_local i32 @hashcat_session_destroy(%struct.TYPE_20__*) #1

declare dso_local i32 @goodbye_screen(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @hashcat_destroy(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

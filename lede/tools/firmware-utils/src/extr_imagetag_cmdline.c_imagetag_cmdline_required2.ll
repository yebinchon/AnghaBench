; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_imagetag_cmdline.c_imagetag_cmdline_required2.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_imagetag_cmdline.c_imagetag_cmdline_required2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gengetopt_args_info = type { i32, i32, i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: '--kernel' ('-i') option required%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: '--rootfs' ('-f') option required%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: '--output' ('-o') option required%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"%s: '--boardid' ('-b') option required%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"%s: '--chipid' ('-c') option required%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s: '--load-addr' ('-l') option required%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"%s: '--entry' ('-e') option required%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imagetag_cmdline_required2(%struct.gengetopt_args_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.gengetopt_args_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.gengetopt_args_info* %0, %struct.gengetopt_args_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @FIX_UNUSED(i8* %8)
  %10 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %4, align 8
  %11 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  br label %22

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i8* [ %20, %19 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %21 ]
  %24 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %23)
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %4, align 8
  %27 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  br label %38

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i8* [ %36, %35 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %37 ]
  %40 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %32, i8* %39)
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %25
  %42 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %4, align 8
  %43 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  br label %54

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i8* [ %52, %51 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %53 ]
  %56 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %48, i8* %55)
  store i32 1, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %41
  %58 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %4, align 8
  %59 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  br label %70

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i8* [ %68, %67 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %69 ]
  %72 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %64, i8* %71)
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %57
  %74 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %4, align 8
  %75 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @stderr, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  br label %86

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i8* [ %84, %83 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %85 ]
  %88 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %80, i8* %87)
  store i32 1, i32* %7, align 4
  br label %89

89:                                               ; preds = %86, %73
  %90 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %4, align 8
  %91 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i8*, i8** %6, align 8
  br label %102

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i8* [ %100, %99 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %101 ]
  %104 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %96, i8* %103)
  store i32 1, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %89
  %106 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %4, align 8
  %107 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @stderr, align 4
  %112 = load i8*, i8** %5, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i8*, i8** %6, align 8
  br label %118

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %115
  %119 = phi i8* [ %116, %115 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %117 ]
  %120 = call i32 @fprintf(i32 %111, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %112, i8* %119)
  store i32 1, i32* %7, align 4
  br label %121

121:                                              ; preds = %118, %105
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @FIX_UNUSED(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_print_one_push_status.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_print_one_push_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, i8*, i32*, i32 }

@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"To %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"[no match]\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"[rejected]\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"remote does not support deleting refs\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"[up to date]\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"non-fast-forward\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"already exists\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"fetch first\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"needs force\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"stale info\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"new shallow roots not allowed\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"[remote rejected]\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"[remote failure]\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"remote failed to report status\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"atomic push failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref*, i8*, i32, i32, i32)* @print_one_push_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_one_push_status(%struct.ref* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ref*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ref* %0, %struct.ref** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %5
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @transport_anonymize_url(i8* %15)
  store i8* %16, i8** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @stdout, align 4
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @stderr, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @free(i8* %27)
  br label %29

29:                                               ; preds = %23, %5
  %30 = load %struct.ref*, %struct.ref** %6, align 8
  %31 = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %147 [
    i32 138, label %33
    i32 133, label %38
    i32 128, label %43
    i32 132, label %51
    i32 136, label %59
    i32 135, label %67
    i32 134, label %75
    i32 130, label %83
    i32 131, label %91
    i32 129, label %99
    i32 139, label %118
    i32 140, label %134
    i32 137, label %142
  ]

33:                                               ; preds = %29
  %34 = load %struct.ref*, %struct.ref** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @print_ref_status(i8 signext 88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.ref* %34, i32* null, i8* null, i32 %35, i32 %36)
  br label %147

38:                                               ; preds = %29
  %39 = load %struct.ref*, %struct.ref** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @print_ref_status(i8 signext 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.ref* %39, i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %41)
  br label %147

43:                                               ; preds = %29
  %44 = load %struct.ref*, %struct.ref** %6, align 8
  %45 = load %struct.ref*, %struct.ref** %6, align 8
  %46 = getelementptr inbounds %struct.ref, %struct.ref* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @print_ref_status(i8 signext 61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.ref* %44, i32* %47, i8* null, i32 %48, i32 %49)
  br label %147

51:                                               ; preds = %29
  %52 = load %struct.ref*, %struct.ref** %6, align 8
  %53 = load %struct.ref*, %struct.ref** %6, align 8
  %54 = getelementptr inbounds %struct.ref, %struct.ref* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @print_ref_status(i8 signext 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.ref* %52, i32* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %56, i32 %57)
  br label %147

59:                                               ; preds = %29
  %60 = load %struct.ref*, %struct.ref** %6, align 8
  %61 = load %struct.ref*, %struct.ref** %6, align 8
  %62 = getelementptr inbounds %struct.ref, %struct.ref* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @print_ref_status(i8 signext 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.ref* %60, i32* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %64, i32 %65)
  br label %147

67:                                               ; preds = %29
  %68 = load %struct.ref*, %struct.ref** %6, align 8
  %69 = load %struct.ref*, %struct.ref** %6, align 8
  %70 = getelementptr inbounds %struct.ref, %struct.ref* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @print_ref_status(i8 signext 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.ref* %68, i32* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %72, i32 %73)
  br label %147

75:                                               ; preds = %29
  %76 = load %struct.ref*, %struct.ref** %6, align 8
  %77 = load %struct.ref*, %struct.ref** %6, align 8
  %78 = getelementptr inbounds %struct.ref, %struct.ref* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @print_ref_status(i8 signext 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.ref* %76, i32* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %80, i32 %81)
  br label %147

83:                                               ; preds = %29
  %84 = load %struct.ref*, %struct.ref** %6, align 8
  %85 = load %struct.ref*, %struct.ref** %6, align 8
  %86 = getelementptr inbounds %struct.ref, %struct.ref* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @print_ref_status(i8 signext 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.ref* %84, i32* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %88, i32 %89)
  br label %147

91:                                               ; preds = %29
  %92 = load %struct.ref*, %struct.ref** %6, align 8
  %93 = load %struct.ref*, %struct.ref** %6, align 8
  %94 = getelementptr inbounds %struct.ref, %struct.ref* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @print_ref_status(i8 signext 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.ref* %92, i32* %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %96, i32 %97)
  br label %147

99:                                               ; preds = %29
  %100 = load %struct.ref*, %struct.ref** %6, align 8
  %101 = load %struct.ref*, %struct.ref** %6, align 8
  %102 = getelementptr inbounds %struct.ref, %struct.ref* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %110

106:                                              ; preds = %99
  %107 = load %struct.ref*, %struct.ref** %6, align 8
  %108 = getelementptr inbounds %struct.ref, %struct.ref* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  br label %110

110:                                              ; preds = %106, %105
  %111 = phi i32* [ null, %105 ], [ %109, %106 ]
  %112 = load %struct.ref*, %struct.ref** %6, align 8
  %113 = getelementptr inbounds %struct.ref, %struct.ref* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @print_ref_status(i8 signext 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), %struct.ref* %100, i32* %111, i8* %114, i32 %115, i32 %116)
  br label %147

118:                                              ; preds = %29
  %119 = load %struct.ref*, %struct.ref** %6, align 8
  %120 = load %struct.ref*, %struct.ref** %6, align 8
  %121 = getelementptr inbounds %struct.ref, %struct.ref* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %129

125:                                              ; preds = %118
  %126 = load %struct.ref*, %struct.ref** %6, align 8
  %127 = getelementptr inbounds %struct.ref, %struct.ref* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  br label %129

129:                                              ; preds = %125, %124
  %130 = phi i32* [ null, %124 ], [ %128, %125 ]
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @print_ref_status(i8 signext 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), %struct.ref* %119, i32* %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %131, i32 %132)
  br label %147

134:                                              ; preds = %29
  %135 = load %struct.ref*, %struct.ref** %6, align 8
  %136 = load %struct.ref*, %struct.ref** %6, align 8
  %137 = getelementptr inbounds %struct.ref, %struct.ref* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @print_ref_status(i8 signext 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.ref* %135, i32* %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %139, i32 %140)
  br label %147

142:                                              ; preds = %29
  %143 = load %struct.ref*, %struct.ref** %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @print_ok_ref_status(%struct.ref* %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %29, %142, %134, %129, %110, %91, %83, %75, %67, %59, %51, %43, %38, %33
  ret i32 1
}

declare dso_local i8* @transport_anonymize_url(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @print_ref_status(i8 signext, i8*, %struct.ref*, i32*, i8*, i32, i32) #1

declare dso_local i32 @print_ok_ref_status(%struct.ref*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

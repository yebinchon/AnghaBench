; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_contents_atom_parser.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_contents_atom_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_format = type { i32 }
%struct.used_atom = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.strbuf = type { i32 }

@C_BARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"body\00", align 1
@C_BODY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@C_SIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@C_SUB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"trailers\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"lines=\00", align 1
@C_LINES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"positive value expected contents:lines=%s\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"unrecognized %%(contents) argument: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_format*, %struct.used_atom*, i8*, %struct.strbuf*)* @contents_atom_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contents_atom_parser(%struct.ref_format* %0, %struct.used_atom* %1, i8* %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_format*, align 8
  %7 = alloca %struct.used_atom*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf*, align 8
  store %struct.ref_format* %0, %struct.ref_format** %6, align 8
  store %struct.used_atom* %1, %struct.used_atom** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @C_BARE, align 4
  %14 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %15 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 4
  br label %104

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @C_BODY, align 4
  %24 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %25 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  br label %103

28:                                               ; preds = %18
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @C_SIG, align 4
  %34 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %35 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  br label %102

38:                                               ; preds = %28
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @C_SUB, align 4
  %44 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %45 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  br label %101

48:                                               ; preds = %38
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @skip_prefix(i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @skip_prefix(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  %55 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %56 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i8*, i8** %8, align 8
  br label %64

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i8* [ %62, %61 ], [ null, %63 ]
  %66 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %67 = call i64 @trailers_atom_parser(%struct.ref_format* %55, %struct.used_atom* %56, i8* %65, %struct.strbuf* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 -1, i32* %5, align 4
  br label %105

70:                                               ; preds = %64
  br label %100

71:                                               ; preds = %48
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @skip_prefix(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %8)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load i32, i32* @C_LINES, align 4
  %77 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %78 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %83 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call i64 @strtoul_ui(i8* %81, i32 10, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %75
  %89 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %90 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @strbuf_addf_ret(%struct.strbuf* %89, i32 -1, i32 %90, i8* %91)
  store i32 %92, i32* %5, align 4
  br label %105

93:                                               ; preds = %75
  br label %99

94:                                               ; preds = %71
  %95 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %96 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @strbuf_addf_ret(%struct.strbuf* %95, i32 -1, i32 %96, i8* %97)
  store i32 %98, i32* %5, align 4
  br label %105

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %70
  br label %101

101:                                              ; preds = %100, %42
  br label %102

102:                                              ; preds = %101, %32
  br label %103

103:                                              ; preds = %102, %22
  br label %104

104:                                              ; preds = %103, %12
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %94, %88, %69
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @trailers_atom_parser(%struct.ref_format*, %struct.used_atom*, i8*, %struct.strbuf*) #1

declare dso_local i64 @strtoul_ui(i8*, i32, i32*) #1

declare dso_local i32 @strbuf_addf_ret(%struct.strbuf*, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

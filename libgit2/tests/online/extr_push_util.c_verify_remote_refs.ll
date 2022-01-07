; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_push_util.c_verify_remote_refs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_push_util.c_verify_remote_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i8*, i32* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Expected and actual refs differ:\0AEXPECTED:\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\0AACTUAL:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verify_remote_refs(%struct.TYPE_5__** %0, i64 %1, %struct.TYPE_6__* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %15 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %32, %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %21, i64 %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %12, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store i32 1, i32* %14, align 4
  br label %35

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %16

35:                                               ; preds = %30, %16
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = sext i32 %40 to i64
  %42 = add i64 %36, %41
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %94

46:                                               ; preds = %35
  store i64 0, i64* %9, align 8
  br label %47

47:                                               ; preds = %90, %46
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %47
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %12, align 8
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %90

65:                                               ; preds = %58, %51
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strcmp(i8* %70, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %65
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = call i64 @git_oid_cmp(i32* %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76, %65
  br label %94

87:                                               ; preds = %76
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %10, align 8
  br label %90

90:                                               ; preds = %87, %64
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %9, align 8
  br label %47

93:                                               ; preds = %47
  br label %155

94:                                               ; preds = %86, %45
  %95 = call i32 @git_buf_puts(i32* %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %96

96:                                               ; preds = %115, %94
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %8, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %96
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i8* @git_oid_tostr_s(i32* %105)
  store i8* %106, i8** %13, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = call i32 @git_buf_printf(i32* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %111, i8* %112)
  %114 = call i32 @cl_git_pass(i32 %113)
  br label %115

115:                                              ; preds = %100
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %9, align 8
  br label %96

118:                                              ; preds = %96
  %119 = call i32 @git_buf_puts(i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %120

120:                                              ; preds = %148, %118
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %6, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %151

124:                                              ; preds = %120
  %125 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %125, i64 %126
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  store %struct.TYPE_5__* %128, %struct.TYPE_5__** %12, align 8
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %131
  br label %148

138:                                              ; preds = %131, %124
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = call i8* @git_oid_tostr_s(i32* %140)
  store i8* %141, i8** %13, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = call i32 @git_buf_printf(i32* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %144, i8* %145)
  %147 = call i32 @cl_git_pass(i32 %146)
  br label %148

148:                                              ; preds = %138, %137
  %149 = load i64, i64* %9, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %9, align 8
  br label %120

151:                                              ; preds = %120
  %152 = call i32 @git_buf_cstr(i32* %11)
  %153 = call i32 @cl_fail(i32 %152)
  %154 = call i32 @git_buf_dispose(i32* %11)
  br label %155

155:                                              ; preds = %151, %93
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @git_buf_puts(i32*, i8*) #1

declare dso_local i8* @git_oid_tostr_s(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @cl_fail(i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

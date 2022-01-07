; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_repo_interpret_branch_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_repo_interpret_branch_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.strbuf = type { i32 }

@INTERPRET_BRANCH_LOCAL = common dso_local global i32 0, align 4
@INTERPRET_BRANCH_HEAD = common dso_local global i32 0, align 4
@upstream_mark = common dso_local global i32 0, align 4
@branch_get_upstream = common dso_local global i32 0, align 4
@push_mark = common dso_local global i32 0, align 4
@branch_get_push = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_interpret_branch_name(%struct.repository* %0, i8* %1, i32 %2, %struct.strbuf* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.strbuf* %3, %struct.strbuf** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %17, %5
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @INTERPRET_BRANCH_LOCAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %23, %20
  %29 = load %struct.repository*, %struct.repository** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %33 = call i32 @interpret_nth_prior_checkout(%struct.repository* %29, i8* %30, i32 %31, %struct.strbuf* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %145

38:                                               ; preds = %28
  %39 = load i32, i32* %14, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %145

47:                                               ; preds = %41
  %48 = load %struct.repository*, %struct.repository** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @reinterpret(%struct.repository* %48, i8* %49, i32 %50, i32 %51, %struct.strbuf* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  br label %145

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %13, align 8
  br label %59

59:                                               ; preds = %141, %57
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sub nsw i64 %62, %67
  %69 = trunc i64 %68 to i32
  %70 = call i8* @memchr(i8* %60, i8 signext 64, i32 %69)
  store i8* %70, i8** %12, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %144

72:                                               ; preds = %59
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @INTERPRET_BRANCH_HEAD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %75, %72
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %90 = call i32 @interpret_empty_at(i8* %81, i32 %82, i32 %88, %struct.strbuf* %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %80
  %94 = load %struct.repository*, %struct.repository** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @reinterpret(%struct.repository* %94, i8* %95, i32 %96, i32 %97, %struct.strbuf* %98, i32 %99)
  store i32 %100, i32* %6, align 4
  br label %145

101:                                              ; preds = %80
  br label %102

102:                                              ; preds = %101, %75
  %103 = load %struct.repository*, %struct.repository** %7, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i8*, i8** %12, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %113 = load i32, i32* @upstream_mark, align 4
  %114 = load i32, i32* @branch_get_upstream, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @interpret_branch_mark(%struct.repository* %103, i8* %104, i32 %105, i32 %111, %struct.strbuf* %112, i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %102
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %6, align 4
  br label %145

121:                                              ; preds = %102
  %122 = load %struct.repository*, %struct.repository** %7, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i8*, i8** %12, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %132 = load i32, i32* @push_mark, align 4
  %133 = load i32, i32* @branch_get_push, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @interpret_branch_mark(%struct.repository* %122, i8* %123, i32 %124, i32 %130, %struct.strbuf* %131, i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %121
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %6, align 4
  br label %145

140:                                              ; preds = %121
  br label %141

141:                                              ; preds = %140
  %142 = load i8*, i8** %12, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  store i8* %143, i8** %13, align 8
  br label %59

144:                                              ; preds = %59
  store i32 -1, i32* %6, align 4
  br label %145

145:                                              ; preds = %144, %138, %119, %93, %47, %45, %36
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @interpret_nth_prior_checkout(%struct.repository*, i8*, i32, %struct.strbuf*) #1

declare dso_local i32 @reinterpret(%struct.repository*, i8*, i32, i32, %struct.strbuf*, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @interpret_empty_at(i8*, i32, i32, %struct.strbuf*) #1

declare dso_local i32 @interpret_branch_mark(%struct.repository*, i8*, i32, i32, %struct.strbuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

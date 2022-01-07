; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_buf_text.c_git_buf_text_puts_escaped.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_buf_text.c_git_buf_text_puts_escaped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_buf_text_puts_escaped(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %11, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %12, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %141

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %10, align 8
  br label %22

22:                                               ; preds = %26, %20
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strcspn(i8* %27, i8* %28)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strspn(i8* %36, i8* %37)
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %12, align 8
  %41 = add i64 %40, 1
  %42 = mul i64 %39, %41
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8* %47, i8** %10, align 8
  br label %22

48:                                               ; preds = %22
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %14, i64 %49, i32 1)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call i64 @git_buf_grow_by(%struct.TYPE_4__* %51, i64 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %141

56:                                               ; preds = %48
  %57 = load i8*, i8** %7, align 8
  store i8* %57, i8** %10, align 8
  br label %58

58:                                               ; preds = %131, %56
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %132

62:                                               ; preds = %58
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @strcspn(i8* %63, i8* %64)
  store i64 %65, i64* %13, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @memmove(i8* %73, i8* %74, i64 %75)
  %77 = load i64, i64* %13, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %79, i8** %10, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i64 @strspn(i8* %87, i8* %88)
  store i64 %89, i64* %13, align 8
  br label %90

90:                                               ; preds = %128, %62
  %91 = load i64, i64* %13, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %131

93:                                               ; preds = %90
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = load i8*, i8** %9, align 8
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @memmove(i8* %101, i8* %102, i64 %103)
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, %105
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = load i8, i8* %112, align 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %116, i64 %120
  store i8 %113, i8* %121, align 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %10, align 8
  br label %128

128:                                              ; preds = %93
  %129 = load i64, i64* %13, align 8
  %130 = add i64 %129, -1
  store i64 %130, i64* %13, align 8
  br label %90

131:                                              ; preds = %90
  br label %58

132:                                              ; preds = %58
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %135, i64 %139
  store i8 0, i8* %140, align 1
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %132, %55, %19
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i64 @git_buf_grow_by(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

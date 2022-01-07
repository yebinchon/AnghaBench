; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_make_rewrite.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_make_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rewrite = type { i32, i32 }
%struct.rewrites = type { i32, %struct.rewrite**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rewrite* (%struct.rewrites*, i8*, i32)* @make_rewrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rewrite* @make_rewrite(%struct.rewrites* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.rewrite*, align 8
  %5 = alloca %struct.rewrites*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rewrite*, align 8
  %9 = alloca i32, align 4
  store %struct.rewrites* %0, %struct.rewrites** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %67, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %13 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %10
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %22 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %21, i32 0, i32 1
  %23 = load %struct.rewrite**, %struct.rewrite*** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.rewrite*, %struct.rewrite** %23, i64 %25
  %27 = load %struct.rewrite*, %struct.rewrite** %26, align 8
  %28 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %20, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %34 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %33, i32 0, i32 1
  %35 = load %struct.rewrite**, %struct.rewrite*** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.rewrite*, %struct.rewrite** %35, i64 %37
  %39 = load %struct.rewrite*, %struct.rewrite** %38, align 8
  %40 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @strncmp(i8* %32, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %66, label %58

45:                                               ; preds = %16
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %48 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %47, i32 0, i32 1
  %49 = load %struct.rewrite**, %struct.rewrite*** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.rewrite*, %struct.rewrite** %49, i64 %51
  %53 = load %struct.rewrite*, %struct.rewrite** %52, align 8
  %54 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strcmp(i8* %46, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %45, %31
  %59 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %60 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %59, i32 0, i32 1
  %61 = load %struct.rewrite**, %struct.rewrite*** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.rewrite*, %struct.rewrite** %61, i64 %63
  %65 = load %struct.rewrite*, %struct.rewrite** %64, align 8
  store %struct.rewrite* %65, %struct.rewrite** %4, align 8
  br label %115

66:                                               ; preds = %45, %31, %19
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %10

70:                                               ; preds = %10
  %71 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %72 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %71, i32 0, i32 1
  %73 = load %struct.rewrite**, %struct.rewrite*** %72, align 8
  %74 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %75 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  %78 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %79 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ALLOC_GROW(%struct.rewrite** %73, i32 %77, i32 %80)
  %82 = call %struct.rewrite* @xcalloc(i32 1, i32 8)
  store %struct.rewrite* %82, %struct.rewrite** %8, align 8
  %83 = load %struct.rewrite*, %struct.rewrite** %8, align 8
  %84 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %85 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %84, i32 0, i32 1
  %86 = load %struct.rewrite**, %struct.rewrite*** %85, align 8
  %87 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %88 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds %struct.rewrite*, %struct.rewrite** %86, i64 %91
  store %struct.rewrite* %83, %struct.rewrite** %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %70
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @xstrndup(i8* %96, i32 %97)
  %99 = load %struct.rewrite*, %struct.rewrite** %8, align 8
  %100 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.rewrite*, %struct.rewrite** %8, align 8
  %103 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  br label %113

104:                                              ; preds = %70
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @xstrdup(i8* %105)
  %107 = load %struct.rewrite*, %struct.rewrite** %8, align 8
  %108 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = load %struct.rewrite*, %struct.rewrite** %8, align 8
  %112 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %104, %95
  %114 = load %struct.rewrite*, %struct.rewrite** %8, align 8
  store %struct.rewrite* %114, %struct.rewrite** %4, align 8
  br label %115

115:                                              ; preds = %113, %58
  %116 = load %struct.rewrite*, %struct.rewrite** %4, align 8
  ret %struct.rewrite* %116
}

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.rewrite**, i32, i32) #1

declare dso_local %struct.rewrite* @xcalloc(i32, i32) #1

declare dso_local i32 @xstrndup(i8*, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

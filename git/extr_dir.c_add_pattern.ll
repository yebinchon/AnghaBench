; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_add_pattern.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_add_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_list = type { i64, %struct.path_pattern**, i32 }
%struct.path_pattern = type { i8*, i32, i32, i8*, i32, i32, i32, %struct.pattern_list* }

@PATTERN_FLAG_MUSTBEDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_pattern(i8* %0, i8* %1, i32 %2, %struct.pattern_list* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pattern_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.path_pattern*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.pattern_list* %3, %struct.pattern_list** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = call i32 @parse_path_pattern(i8** %6, i32* %12, i32* %13, i32* %14)
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* @PATTERN_FLAG_MUSTBEDIR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load %struct.path_pattern*, %struct.path_pattern** %11, align 8
  %22 = load %struct.path_pattern*, %struct.path_pattern** %11, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @FLEXPTR_ALLOC_MEM(%struct.path_pattern* %21, %struct.path_pattern* %22, i8* %23, i32 %24)
  br label %31

26:                                               ; preds = %5
  %27 = call %struct.path_pattern* @xmalloc(i32 48)
  store %struct.path_pattern* %27, %struct.path_pattern** %11, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.path_pattern*, %struct.path_pattern** %11, align 8
  %30 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.path_pattern*, %struct.path_pattern** %11, align 8
  %34 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.path_pattern*, %struct.path_pattern** %11, align 8
  %37 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.path_pattern*, %struct.path_pattern** %11, align 8
  %40 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.path_pattern*, %struct.path_pattern** %11, align 8
  %43 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.path_pattern*, %struct.path_pattern** %11, align 8
  %46 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.path_pattern*, %struct.path_pattern** %11, align 8
  %49 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pattern_list*, %struct.pattern_list** %9, align 8
  %51 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %50, i32 0, i32 1
  %52 = load %struct.path_pattern**, %struct.path_pattern*** %51, align 8
  %53 = load %struct.pattern_list*, %struct.pattern_list** %9, align 8
  %54 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = load %struct.pattern_list*, %struct.pattern_list** %9, align 8
  %58 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ALLOC_GROW(%struct.path_pattern** %52, i64 %56, i32 %59)
  %61 = load %struct.path_pattern*, %struct.path_pattern** %11, align 8
  %62 = load %struct.pattern_list*, %struct.pattern_list** %9, align 8
  %63 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %62, i32 0, i32 1
  %64 = load %struct.path_pattern**, %struct.path_pattern*** %63, align 8
  %65 = load %struct.pattern_list*, %struct.pattern_list** %9, align 8
  %66 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = getelementptr inbounds %struct.path_pattern*, %struct.path_pattern** %64, i64 %67
  store %struct.path_pattern* %61, %struct.path_pattern** %69, align 8
  %70 = load %struct.pattern_list*, %struct.pattern_list** %9, align 8
  %71 = load %struct.path_pattern*, %struct.path_pattern** %11, align 8
  %72 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %71, i32 0, i32 7
  store %struct.pattern_list* %70, %struct.pattern_list** %72, align 8
  ret void
}

declare dso_local i32 @parse_path_pattern(i8**, i32*, i32*, i32*) #1

declare dso_local i32 @FLEXPTR_ALLOC_MEM(%struct.path_pattern*, %struct.path_pattern*, i8*, i32) #1

declare dso_local %struct.path_pattern* @xmalloc(i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.path_pattern**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

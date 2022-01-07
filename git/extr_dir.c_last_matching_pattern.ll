; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_last_matching_pattern.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_last_matching_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_pattern = type { i32 }
%struct.dir_struct = type { %struct.path_pattern* }
%struct.index_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.path_pattern* @last_matching_pattern(%struct.dir_struct* %0, %struct.index_state* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.path_pattern*, align 8
  %6 = alloca %struct.dir_struct*, align 8
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.dir_struct* %0, %struct.dir_struct** %6, align 8
  store %struct.index_state* %1, %struct.index_state** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i8* @strrchr(i8* %14, i8 signext 47)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i8*, i8** %11, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  br label %23

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i8* [ %20, %18 ], [ %22, %21 ]
  store i8* %24, i8** %11, align 8
  %25 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %26 = load %struct.index_state*, %struct.index_state** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @prep_exclude(%struct.dir_struct* %25, %struct.index_state* %26, i8* %27, i32 %33)
  %35 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %36 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %35, i32 0, i32 0
  %37 = load %struct.path_pattern*, %struct.path_pattern** %36, align 8
  %38 = icmp ne %struct.path_pattern* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %41 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %40, i32 0, i32 0
  %42 = load %struct.path_pattern*, %struct.path_pattern** %41, align 8
  store %struct.path_pattern* %42, %struct.path_pattern** %5, align 8
  br label %51

43:                                               ; preds = %23
  %44 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %45 = load %struct.index_state*, %struct.index_state** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call %struct.path_pattern* @last_matching_pattern_from_lists(%struct.dir_struct* %44, %struct.index_state* %45, i8* %46, i32 %47, i8* %48, i32* %49)
  store %struct.path_pattern* %50, %struct.path_pattern** %5, align 8
  br label %51

51:                                               ; preds = %43, %39
  %52 = load %struct.path_pattern*, %struct.path_pattern** %5, align 8
  ret %struct.path_pattern* %52
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @prep_exclude(%struct.dir_struct*, %struct.index_state*, i8*, i32) #1

declare dso_local %struct.path_pattern* @last_matching_pattern_from_lists(%struct.dir_struct*, %struct.index_state*, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

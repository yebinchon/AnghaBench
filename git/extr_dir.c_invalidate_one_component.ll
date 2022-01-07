; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_invalidate_one_component.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_invalidate_one_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.untracked_cache = type { i32 }
%struct.untracked_cache_dir = type { i32 }

@DIR_SHOW_OTHER_DIRECTORIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.untracked_cache*, %struct.untracked_cache_dir*, i8*, i32)* @invalidate_one_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_one_component(%struct.untracked_cache* %0, %struct.untracked_cache_dir* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.untracked_cache*, align 8
  %7 = alloca %struct.untracked_cache_dir*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.untracked_cache_dir*, align 8
  %13 = alloca i32, align 4
  store %struct.untracked_cache* %0, %struct.untracked_cache** %6, align 8
  store %struct.untracked_cache_dir* %1, %struct.untracked_cache_dir** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 47)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %4
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %26 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.untracked_cache_dir* @lookup_untracked(%struct.untracked_cache* %25, %struct.untracked_cache_dir* %26, i8* %27, i32 %28)
  store %struct.untracked_cache_dir* %29, %struct.untracked_cache_dir** %12, align 8
  %30 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %31 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %12, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  %37 = sub nsw i32 %34, %36
  %38 = call i32 @invalidate_one_component(%struct.untracked_cache* %30, %struct.untracked_cache_dir* %31, i8* %33, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %18
  %42 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %43 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %44 = call i32 @invalidate_one_directory(%struct.untracked_cache* %42, %struct.untracked_cache_dir* %43)
  br label %45

45:                                               ; preds = %41, %18
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %5, align 4
  br label %56

47:                                               ; preds = %4
  %48 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %49 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %50 = call i32 @invalidate_one_directory(%struct.untracked_cache* %48, %struct.untracked_cache_dir* %49)
  %51 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %52 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DIR_SHOW_OTHER_DIRECTORIES, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %47, %45
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.untracked_cache_dir* @lookup_untracked(%struct.untracked_cache*, %struct.untracked_cache_dir*, i8*, i32) #1

declare dso_local i32 @invalidate_one_directory(%struct.untracked_cache*, %struct.untracked_cache_dir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_describe.c_possible_tag_dup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_describe.c_possible_tag_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.possible_tag = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.possible_tag**, %struct.possible_tag*)* @possible_tag_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @possible_tag_dup(%struct.possible_tag** %0, %struct.possible_tag* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.possible_tag**, align 8
  %5 = alloca %struct.possible_tag*, align 8
  %6 = alloca %struct.possible_tag*, align 8
  %7 = alloca i32, align 4
  store %struct.possible_tag** %0, %struct.possible_tag*** %4, align 8
  store %struct.possible_tag* %1, %struct.possible_tag** %5, align 8
  %8 = call %struct.possible_tag* @git__malloc(i32 8)
  store %struct.possible_tag* %8, %struct.possible_tag** %6, align 8
  %9 = load %struct.possible_tag*, %struct.possible_tag** %6, align 8
  %10 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.possible_tag* %9)
  %11 = load %struct.possible_tag*, %struct.possible_tag** %6, align 8
  %12 = load %struct.possible_tag*, %struct.possible_tag** %5, align 8
  %13 = call i32 @memcpy(%struct.possible_tag* %11, %struct.possible_tag* %12, i32 8)
  %14 = load %struct.possible_tag*, %struct.possible_tag** %6, align 8
  %15 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load %struct.possible_tag*, %struct.possible_tag** %6, align 8
  %17 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %16, i32 0, i32 0
  %18 = load %struct.possible_tag*, %struct.possible_tag** %5, align 8
  %19 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @commit_name_dup(i32** %17, i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.possible_tag*, %struct.possible_tag** %6, align 8
  %25 = call i32 @git__free(%struct.possible_tag* %24)
  %26 = load %struct.possible_tag**, %struct.possible_tag*** %4, align 8
  store %struct.possible_tag* null, %struct.possible_tag** %26, align 8
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.possible_tag*, %struct.possible_tag** %6, align 8
  %30 = load %struct.possible_tag**, %struct.possible_tag*** %4, align 8
  store %struct.possible_tag* %29, %struct.possible_tag** %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.possible_tag* @git__malloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.possible_tag*) #1

declare dso_local i32 @memcpy(%struct.possible_tag*, %struct.possible_tag*, i32) #1

declare dso_local i32 @commit_name_dup(i32**, i32*) #1

declare dso_local i32 @git__free(%struct.possible_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

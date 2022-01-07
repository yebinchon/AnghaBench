; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_is_dup_ref.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_is_dup_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_entry = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@REF_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Reference directory conflict: %s\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Duplicated ref, and SHA1s don't match: %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Duplicated ref: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_entry*, %struct.ref_entry*)* @is_dup_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dup_ref(%struct.ref_entry* %0, %struct.ref_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_entry*, align 8
  %5 = alloca %struct.ref_entry*, align 8
  store %struct.ref_entry* %0, %struct.ref_entry** %4, align 8
  store %struct.ref_entry* %1, %struct.ref_entry** %5, align 8
  %6 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %7 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %10 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @strcmp(i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %17 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @REF_DIR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %24 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @REF_DIR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22, %15
  %30 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %31 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %36 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %40 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @oideq(i32* %38, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %34
  %46 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %47 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %34
  %51 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %52 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oideq(i32*, i32*) #1

declare dso_local i32 @warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

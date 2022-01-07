; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_mark_bad_packed_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_mark_bad_packed_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.packed_git = type { i32, i64 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@GIT_MAX_RAWSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_bad_packed_object(%struct.packed_git* %0, i8* %1) #0 {
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %30, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %13 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %19 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = mul i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = call i64 @hasheq(i8* %17, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %62

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %35 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @GIT_MAX_RAWSZ, align 4
  %38 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %39 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @st_add(i32 %40, i32 1)
  %42 = call i32 @st_mult(i32 %37, i32 %41)
  %43 = call i64 @xrealloc(i64 %36, i32 %42)
  %44 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %45 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %47 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %51 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul i32 %49, %52
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %48, %54
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @hashcpy(i64 %55, i8* %56)
  %58 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %59 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %33, %28
  ret void
}

declare dso_local i64 @hasheq(i8*, i64) #1

declare dso_local i64 @xrealloc(i64, i32) #1

declare dso_local i32 @st_mult(i32, i32) #1

declare dso_local i32 @st_add(i32, i32) #1

declare dso_local i32 @hashcpy(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

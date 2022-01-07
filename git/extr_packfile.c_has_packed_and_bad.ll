; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_has_packed_and_bad.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_has_packed_and_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.packed_git = type { i32, i64, %struct.packed_git* }
%struct.repository = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.packed_git* }

@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.packed_git* @has_packed_and_bad(%struct.repository* %0, i8* %1) #0 {
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.packed_git*, align 8
  %7 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.repository*, %struct.repository** %4, align 8
  %9 = getelementptr inbounds %struct.repository, %struct.repository* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.packed_git*, %struct.packed_git** %11, align 8
  store %struct.packed_git* %12, %struct.packed_git** %6, align 8
  br label %13

13:                                               ; preds = %44, %2
  %14 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %15 = icmp ne %struct.packed_git* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %40, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %20 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %26 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %27, %33
  %35 = call i64 @hasheq(i8* %24, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  store %struct.packed_git* %38, %struct.packed_git** %3, align 8
  br label %49

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %17

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %46 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %45, i32 0, i32 2
  %47 = load %struct.packed_git*, %struct.packed_git** %46, align 8
  store %struct.packed_git* %47, %struct.packed_git** %6, align 8
  br label %13

48:                                               ; preds = %13
  store %struct.packed_git* null, %struct.packed_git** %3, align 8
  br label %49

49:                                               ; preds = %48, %37
  %50 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  ret %struct.packed_git* %50
}

declare dso_local i64 @hasheq(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

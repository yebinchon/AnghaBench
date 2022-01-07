; ModuleID = '/home/carl/AnghaBench/git/extr_pack-check.c_check_pack_crc.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-check.c_check_pack_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.packed_git = type { i64*, i32 }
%struct.pack_window = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_pack_crc(%struct.packed_git* %0, %struct.pack_window** %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.packed_git*, align 8
  %7 = alloca %struct.pack_window**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.packed_git* %0, %struct.packed_git** %6, align 8
  store %struct.pack_window** %1, %struct.pack_window*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = call i64 @crc32(i64 0, i8* null, i64 0)
  store i64 %15, i64* %12, align 8
  br label %16

16:                                               ; preds = %37, %5
  %17 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %18 = load %struct.pack_window**, %struct.pack_window*** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i8* @use_pack(%struct.packed_git* %17, %struct.pack_window** %18, i64 %19, i64* %13)
  store i8* %20, i8** %14, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %13, align 8
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i64, i64* %12, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @crc32(i64 %27, i8* %28, i64 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %26
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %16, label %40

40:                                               ; preds = %37
  %41 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %42 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  store i64* %43, i64** %11, align 8
  %44 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %45 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 4
  %51 = mul nsw i32 %46, %50
  %52 = add nsw i32 258, %51
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %52, %53
  %55 = load i64*, i64** %11, align 8
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64* %57, i64** %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64*, i64** %11, align 8
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @ntohl(i64 %60)
  %62 = icmp ne i64 %58, %61
  %63 = zext i1 %62 to i32
  ret i32 %63
}

declare dso_local i64 @crc32(i64, i8*, i64) #1

declare dso_local i8* @use_pack(%struct.packed_git*, %struct.pack_window**, i64, i64*) #1

declare dso_local i64 @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

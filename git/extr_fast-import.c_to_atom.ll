; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_to_atom.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_to_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_str = type { i16, %struct.atom_str*, i64* }

@atom_table_sz = common dso_local global i32 0, align 4
@atom_table = common dso_local global %struct.atom_str** null, align 8
@fi_mem_pool = common dso_local global i32 0, align 4
@atom_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atom_str* (i8*, i16)* @to_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atom_str* @to_atom(i8* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.atom_str*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.atom_str*, align 8
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load i8*, i8** %4, align 8
  %9 = load i16, i16* %5, align 2
  %10 = call i32 @hc_str(i8* %8, i16 zeroext %9)
  %11 = load i32, i32* @atom_table_sz, align 4
  %12 = urem i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.atom_str**, %struct.atom_str*** @atom_table, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.atom_str*, %struct.atom_str** %13, i64 %15
  %17 = load %struct.atom_str*, %struct.atom_str** %16, align 8
  store %struct.atom_str* %17, %struct.atom_str** %7, align 8
  br label %18

18:                                               ; preds = %40, %2
  %19 = load %struct.atom_str*, %struct.atom_str** %7, align 8
  %20 = icmp ne %struct.atom_str* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load %struct.atom_str*, %struct.atom_str** %7, align 8
  %23 = getelementptr inbounds %struct.atom_str, %struct.atom_str* %22, i32 0, i32 0
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.atom_str*, %struct.atom_str** %7, align 8
  %32 = getelementptr inbounds %struct.atom_str, %struct.atom_str* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i16, i16* %5, align 2
  %35 = call i32 @strncmp(i8* %30, i64* %33, i16 zeroext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = load %struct.atom_str*, %struct.atom_str** %7, align 8
  store %struct.atom_str* %38, %struct.atom_str** %3, align 8
  br label %81

39:                                               ; preds = %29, %21
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.atom_str*, %struct.atom_str** %7, align 8
  %42 = getelementptr inbounds %struct.atom_str, %struct.atom_str* %41, i32 0, i32 1
  %43 = load %struct.atom_str*, %struct.atom_str** %42, align 8
  store %struct.atom_str* %43, %struct.atom_str** %7, align 8
  br label %18

44:                                               ; preds = %18
  %45 = load i16, i16* %5, align 2
  %46 = zext i16 %45 to i64
  %47 = add i64 24, %46
  %48 = add i64 %47, 1
  %49 = trunc i64 %48 to i32
  %50 = call %struct.atom_str* @mem_pool_alloc(i32* @fi_mem_pool, i32 %49)
  store %struct.atom_str* %50, %struct.atom_str** %7, align 8
  %51 = load i16, i16* %5, align 2
  %52 = load %struct.atom_str*, %struct.atom_str** %7, align 8
  %53 = getelementptr inbounds %struct.atom_str, %struct.atom_str* %52, i32 0, i32 0
  store i16 %51, i16* %53, align 8
  %54 = load %struct.atom_str*, %struct.atom_str** %7, align 8
  %55 = getelementptr inbounds %struct.atom_str, %struct.atom_str* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i16, i16* %5, align 2
  %59 = call i32 @memcpy(i64* %56, i8* %57, i16 zeroext %58)
  %60 = load %struct.atom_str*, %struct.atom_str** %7, align 8
  %61 = getelementptr inbounds %struct.atom_str, %struct.atom_str* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i16, i16* %5, align 2
  %64 = zext i16 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 0, i64* %65, align 8
  %66 = load %struct.atom_str**, %struct.atom_str*** @atom_table, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.atom_str*, %struct.atom_str** %66, i64 %68
  %70 = load %struct.atom_str*, %struct.atom_str** %69, align 8
  %71 = load %struct.atom_str*, %struct.atom_str** %7, align 8
  %72 = getelementptr inbounds %struct.atom_str, %struct.atom_str* %71, i32 0, i32 1
  store %struct.atom_str* %70, %struct.atom_str** %72, align 8
  %73 = load %struct.atom_str*, %struct.atom_str** %7, align 8
  %74 = load %struct.atom_str**, %struct.atom_str*** @atom_table, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.atom_str*, %struct.atom_str** %74, i64 %76
  store %struct.atom_str* %73, %struct.atom_str** %77, align 8
  %78 = load i32, i32* @atom_cnt, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @atom_cnt, align 4
  %80 = load %struct.atom_str*, %struct.atom_str** %7, align 8
  store %struct.atom_str* %80, %struct.atom_str** %3, align 8
  br label %81

81:                                               ; preds = %44, %37
  %82 = load %struct.atom_str*, %struct.atom_str** %3, align 8
  ret %struct.atom_str* %82
}

declare dso_local i32 @hc_str(i8*, i16 zeroext) #1

declare dso_local i32 @strncmp(i8*, i64*, i16 zeroext) #1

declare dso_local %struct.atom_str* @mem_pool_alloc(i32*, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

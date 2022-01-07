; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_get_delta_base.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_get_delta_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.packed_git = type { i32 }
%struct.pack_window = type { i32 }

@OBJ_OFS_DELTA = common dso_local global i32 0, align 4
@OBJ_REF_DELTA = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"I am totally screwed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packed_git*, %struct.pack_window**, i32*, i32, i32)* @get_delta_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_delta_base(%struct.packed_git* %0, %struct.pack_window** %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.packed_git*, align 8
  %8 = alloca %struct.pack_window**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.packed_git* %0, %struct.packed_git** %7, align 8
  store %struct.pack_window** %1, %struct.pack_window*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %17 = load %struct.pack_window**, %struct.pack_window*** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @use_pack(%struct.packed_git* %16, %struct.pack_window** %17, i32 %19, i32* null)
  store i8* %20, i8** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @OBJ_OFS_DELTA, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* %14, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %14, align 4
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %15, align 1
  %31 = load i8, i8* %15, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 127
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %49, %24
  %35 = load i8, i8* %15, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 128
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @MSB(i32 %45, i32 7)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %39
  store i32 0, i32* %6, align 4
  br label %99

49:                                               ; preds = %44
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %14, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %14, align 4
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %15, align 1
  %56 = load i32, i32* %13, align 4
  %57 = shl i32 %56, 7
  %58 = load i8, i8* %15, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 127
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %13, align 4
  br label %34

62:                                               ; preds = %34
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %62
  store i32 0, i32* %6, align 4
  br label %99

73:                                               ; preds = %68
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %97

78:                                               ; preds = %5
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @OBJ_REF_DELTA, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load i8*, i8** %12, align 8
  %84 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %85 = call i32 @find_pack_entry_one(i8* %83, %struct.packed_git* %84)
  store i32 %85, i32* %13, align 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %88
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  br label %96

94:                                               ; preds = %78
  %95 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %82
  br label %97

97:                                               ; preds = %96, %73
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %97, %72, %48
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i8* @use_pack(%struct.packed_git*, %struct.pack_window**, i32, i32*) #1

declare dso_local i64 @MSB(i32, i32) #1

declare dso_local i32 @find_pack_entry_one(i8*, %struct.packed_git*) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-delta.c_hash_chars.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-delta.c_hash_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spanhash_top = type { i32, i32, i32 }
%struct.repository = type { i32 }
%struct.diff_filespec = type { i8*, i32 }

@INITIAL_HASH_SIZE = common dso_local global i32 0, align 4
@HASHBASE = common dso_local global i32 0, align 4
@spanhash_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spanhash_top* (%struct.repository*, %struct.diff_filespec*)* @hash_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spanhash_top* @hash_chars(%struct.repository* %0, %struct.diff_filespec* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.diff_filespec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spanhash_top*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %4, align 8
  %16 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %17 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %11, align 8
  %19 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %20 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.repository*, %struct.repository** %3, align 8
  %23 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %24 = call i32 @diff_filespec_is_binary(%struct.repository* %22, %struct.diff_filespec* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @INITIAL_HASH_SIZE, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 1, %29
  %31 = call i32 @st_mult(i32 4, i32 %30)
  %32 = call i32 @st_add(i32 12, i32 %31)
  %33 = call %struct.spanhash_top* @xmalloc(i32 %32)
  store %struct.spanhash_top* %33, %struct.spanhash_top** %10, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.spanhash_top*, %struct.spanhash_top** %10, align 8
  %36 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @INITIAL_FREE(i32 %37)
  %39 = load %struct.spanhash_top*, %struct.spanhash_top** %10, align 8
  %40 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.spanhash_top*, %struct.spanhash_top** %10, align 8
  %42 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 1, %44
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memset(i32 %43, i32 0, i32 %48)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %96, %95, %74, %2
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %107

53:                                               ; preds = %50
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %11, align 8
  %56 = load i8, i8* %54, align 1
  %57 = zext i8 %56 to i32
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %53
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, 13
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %50

75:                                               ; preds = %69, %66, %63, %53
  %76 = load i32, i32* %7, align 4
  %77 = shl i32 %76, 7
  %78 = load i32, i32* %8, align 4
  %79 = lshr i32 %78, 25
  %80 = xor i32 %77, %79
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = shl i32 %81, 7
  %83 = load i32, i32* %15, align 4
  %84 = lshr i32 %83, 25
  %85 = xor i32 %82, %84
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  %91 = icmp slt i32 %90, 64
  br i1 %91, label %92, label %96

92:                                               ; preds = %75
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 10
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %50

96:                                               ; preds = %92, %75
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = mul i32 %98, 97
  %100 = add i32 %97, %99
  %101 = load i32, i32* @HASHBASE, align 4
  %102 = urem i32 %100, %101
  store i32 %102, i32* %9, align 4
  %103 = load %struct.spanhash_top*, %struct.spanhash_top** %10, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call %struct.spanhash_top* @add_spanhash(%struct.spanhash_top* %103, i32 %104, i32 %105)
  store %struct.spanhash_top* %106, %struct.spanhash_top** %10, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %50

107:                                              ; preds = %50
  %108 = load %struct.spanhash_top*, %struct.spanhash_top** %10, align 8
  %109 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.spanhash_top*, %struct.spanhash_top** %10, align 8
  %112 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = zext i32 %113 to i64
  %115 = shl i64 1, %114
  %116 = load i32, i32* @spanhash_cmp, align 4
  %117 = call i32 @QSORT(i32 %110, i64 %115, i32 %116)
  %118 = load %struct.spanhash_top*, %struct.spanhash_top** %10, align 8
  ret %struct.spanhash_top* %118
}

declare dso_local i32 @diff_filespec_is_binary(%struct.repository*, %struct.diff_filespec*) #1

declare dso_local %struct.spanhash_top* @xmalloc(i32) #1

declare dso_local i32 @st_add(i32, i32) #1

declare dso_local i32 @st_mult(i32, i32) #1

declare dso_local i32 @INITIAL_FREE(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.spanhash_top* @add_spanhash(%struct.spanhash_top*, i32, i32) #1

declare dso_local i32 @QSORT(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

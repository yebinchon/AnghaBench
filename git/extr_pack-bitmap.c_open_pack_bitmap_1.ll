; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_open_pack_bitmap_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_open_pack_bitmap_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { i32, i32*, i64, %struct.packed_git* }
%struct.packed_git = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"ignoring extra bitmap file: %s\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap_index*, %struct.packed_git*)* @open_pack_bitmap_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_pack_bitmap_1(%struct.bitmap_index* %0, %struct.packed_git* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_index*, align 8
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  store %struct.bitmap_index* %0, %struct.bitmap_index** %4, align 8
  store %struct.packed_git* %1, %struct.packed_git** %5, align 8
  %9 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %10 = call i64 @open_pack_index(%struct.packed_git* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %80

13:                                               ; preds = %2
  %14 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %15 = call i8* @pack_bitmap_filename(%struct.packed_git* %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @git_open(i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @free(i8* %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %80

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @fstat(i32 %24, %struct.stat* %7)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @close(i32 %28)
  store i32 -1, i32* %3, align 4
  br label %80

30:                                               ; preds = %23
  %31 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %32 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %31, i32 0, i32 3
  %33 = load %struct.packed_git*, %struct.packed_git** %32, align 8
  %34 = icmp ne %struct.packed_git* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %37 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @close(i32 %40)
  store i32 -1, i32* %3, align 4
  br label %80

42:                                               ; preds = %30
  %43 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %44 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %45 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %44, i32 0, i32 3
  store %struct.packed_git* %43, %struct.packed_git** %45, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @xsize_t(i32 %47)
  %49 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %50 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %52 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PROT_READ, align 4
  %55 = load i32, i32* @MAP_PRIVATE, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32* @xmmap(i32* null, i32 %53, i32 %54, i32 %55, i32 %56, i32 0)
  %58 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %59 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %61 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @close(i32 %62)
  %64 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %65 = call i64 @load_bitmap_header(%struct.bitmap_index* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %42
  %68 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %69 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %72 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @munmap(i32* %70, i32 %73)
  %75 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %76 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %78 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  store i32 -1, i32* %3, align 4
  br label %80

79:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %67, %35, %27, %22, %12
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

declare dso_local i8* @pack_bitmap_filename(%struct.packed_git*) #1

declare dso_local i32 @git_open(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @xsize_t(i32) #1

declare dso_local i32* @xmmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @load_bitmap_header(%struct.bitmap_index*) #1

declare dso_local i32 @munmap(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

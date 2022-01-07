; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_nth_packed_object_offset.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_nth_packed_object_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_file = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.git_pack_file*, i32)* @nth_packed_object_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nth_packed_object_offset(%struct.git_pack_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.git_pack_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.git_pack_file* %0, %struct.git_pack_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.git_pack_file*, %struct.git_pack_file** %4, align 8
  %10 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.git_pack_file*, %struct.git_pack_file** %4, align 8
  %15 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %13, i64 %18
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1024
  store i8* %21, i8** %6, align 8
  %22 = load %struct.git_pack_file*, %struct.git_pack_file** %4, align 8
  %23 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 24, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohl(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %87

35:                                               ; preds = %2
  %36 = load %struct.git_pack_file*, %struct.git_pack_file** %4, align 8
  %37 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 24
  %40 = add nsw i32 8, %39
  %41 = load i8*, i8** %6, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 4, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohl(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, -2147483648
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %35
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %87

57:                                               ; preds = %35
  %58 = load %struct.git_pack_file*, %struct.git_pack_file** %4, align 8
  %59 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 4
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 2147483647
  %64 = mul nsw i32 %63, 8
  %65 = add nsw i32 %61, %64
  %66 = load i8*, i8** %6, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 -8
  %72 = icmp uge i8* %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  br label %87

74:                                               ; preds = %57
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ntohl(i32 %78)
  %80 = shl i32 %79, 32
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohl(i32 %84)
  %86 = or i32 %80, %85
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %74, %73, %55, %26
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

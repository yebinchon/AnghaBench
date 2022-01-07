; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_copy_from_grant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_copy_from_grant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copy_from_grant = type { i64, i64, i64, %struct.blk_shadow* }
%struct.blk_shadow = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i8*)* @blkif_copy_from_grant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkif_copy_from_grant(i64 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.copy_from_grant*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.blk_shadow*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.copy_from_grant*
  store %struct.copy_from_grant* %13, %struct.copy_from_grant** %9, align 8
  %14 = load %struct.copy_from_grant*, %struct.copy_from_grant** %9, align 8
  %15 = getelementptr inbounds %struct.copy_from_grant, %struct.copy_from_grant* %14, i32 0, i32 3
  %16 = load %struct.blk_shadow*, %struct.blk_shadow** %15, align 8
  store %struct.blk_shadow* %16, %struct.blk_shadow** %11, align 8
  %17 = load %struct.blk_shadow*, %struct.blk_shadow** %11, align 8
  %18 = getelementptr inbounds %struct.blk_shadow, %struct.blk_shadow* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load %struct.copy_from_grant*, %struct.copy_from_grant** %9, align 8
  %21 = getelementptr inbounds %struct.copy_from_grant, %struct.copy_from_grant* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @kmap_atomic(i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load %struct.copy_from_grant*, %struct.copy_from_grant** %9, align 8
  %29 = getelementptr inbounds %struct.copy_from_grant, %struct.copy_from_grant* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.copy_from_grant*, %struct.copy_from_grant** %9, align 8
  %32 = getelementptr inbounds %struct.copy_from_grant, %struct.copy_from_grant* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @memcpy(i64 %34, i8* %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = load %struct.copy_from_grant*, %struct.copy_from_grant** %9, align 8
  %44 = getelementptr inbounds %struct.copy_from_grant, %struct.copy_from_grant* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.copy_from_grant*, %struct.copy_from_grant** %9, align 8
  %48 = getelementptr inbounds %struct.copy_from_grant, %struct.copy_from_grant* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @kunmap_atomic(i8* %51)
  ret void
}

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_make_empty_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_make_empty_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.bin\00", align 1
@cache_id = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"open (%s, O_CREAT | O_WRONLY | O_EXCL, 0660) failed. %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_empty_binlog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_start*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = icmp slt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* @cache_id, align 4
  %20 = call %struct.lev_start* @cache_lev_start_alloc(i32 %19, i32* %5)
  store %struct.lev_start* %20, %struct.lev_start** %6, align 8
  %21 = load i32, i32* @O_CREAT, align 4
  %22 = load i32, i32* @O_WRONLY, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @O_EXCL, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @open(i8* %11, i32 %25, i32 432)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = call i32 @kprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %35

35:                                               ; preds = %29, %1
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.lev_start*, %struct.lev_start** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @write(i32 %36, %struct.lev_start* %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @fsync(i32 %44)
  %46 = icmp sge i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @close(i32 %49)
  %51 = icmp sge i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local %struct.lev_start* @cache_lev_start_alloc(i32, i32*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @kprintf(i8*, i8*) #2

declare dso_local i32 @write(i32, %struct.lev_start*, i32) #2

declare dso_local i64 @fsync(i32) #2

declare dso_local i64 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

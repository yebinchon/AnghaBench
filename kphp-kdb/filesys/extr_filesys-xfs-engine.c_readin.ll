; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_readin.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_readin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rptr = common dso_local global i64 0, align 8
@wptr = common dso_local global i64 0, align 8
@Buff = common dso_local global i64 0, align 8
@BUFFSIZE = common dso_local global i64 0, align 8
@idx_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"error reading file: %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @readin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @readin(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp uge i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i64, i64* @rptr, align 8
  %10 = load i64, i64* %3, align 8
  %11 = add i64 %9, %10
  %12 = load i64, i64* @wptr, align 8
  %13 = icmp ule i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i64, i64* @rptr, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %2, align 8
  br label %64

17:                                               ; preds = %1
  %18 = load i64, i64* @wptr, align 8
  %19 = load i64, i64* @Buff, align 8
  %20 = load i64, i64* @BUFFSIZE, align 8
  %21 = add nsw i64 %19, %20
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i8* null, i8** %2, align 8
  br label %64

24:                                               ; preds = %17
  %25 = load i64, i64* @Buff, align 8
  %26 = load i64, i64* @rptr, align 8
  %27 = load i64, i64* @wptr, align 8
  %28 = load i64, i64* @rptr, align 8
  %29 = sub nsw i64 %27, %28
  %30 = call i32 @memcpy(i64 %25, i64 %26, i64 %29)
  %31 = load i64, i64* @rptr, align 8
  %32 = load i64, i64* @Buff, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i64, i64* @wptr, align 8
  %35 = sub nsw i64 %34, %33
  store i64 %35, i64* @wptr, align 8
  %36 = load i64, i64* @Buff, align 8
  store i64 %36, i64* @rptr, align 8
  %37 = load i32, i32* @idx_fd, align 4
  %38 = load i64, i64* @wptr, align 8
  %39 = load i64, i64* @Buff, align 8
  %40 = load i64, i64* @BUFFSIZE, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* @wptr, align 8
  %43 = sub nsw i64 %41, %42
  %44 = call i32 @read(i32 %37, i64 %38, i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %24
  %48 = call i32 @kprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %54

49:                                               ; preds = %24
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @wptr, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* @wptr, align 8
  br label %54

54:                                               ; preds = %49, %47
  %55 = load i64, i64* @rptr, align 8
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %55, %56
  %58 = load i64, i64* @wptr, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i64, i64* @rptr, align 8
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %2, align 8
  br label %64

63:                                               ; preds = %54
  store i8* null, i8** %2, align 8
  br label %64

64:                                               ; preds = %63, %60, %23, %14
  %65 = load i8*, i8** %2, align 8
  ret i8* %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @read(i32, i64, i64) #1

declare dso_local i32 @kprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

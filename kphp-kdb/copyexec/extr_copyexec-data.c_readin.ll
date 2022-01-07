; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_readin.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_readin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"readin (fd: %d, len: %lld)\0A\00", align 1
@rptr = common dso_local global i64 0, align 8
@wptr = common dso_local global i64 0, align 8
@Buff = common dso_local global i64 0, align 8
@BUFFSIZE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"error reading file: %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i64)* @readin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @readin(i32 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %7, i64 %8)
  %10 = load i64, i64* %5, align 8
  %11 = icmp uge i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i64, i64* @rptr, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %14, %15
  %17 = load i64, i64* @wptr, align 8
  %18 = icmp ule i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64, i64* @rptr, align 8
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %3, align 8
  br label %80

22:                                               ; preds = %2
  %23 = load i64, i64* @wptr, align 8
  %24 = load i64, i64* @Buff, align 8
  %25 = load i64, i64* @BUFFSIZE, align 8
  %26 = add nsw i64 %24, %25
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %80

29:                                               ; preds = %22
  %30 = load i64, i64* @Buff, align 8
  %31 = load i64, i64* @rptr, align 8
  %32 = load i64, i64* @wptr, align 8
  %33 = load i64, i64* @rptr, align 8
  %34 = sub nsw i64 %32, %33
  %35 = call i32 @memcpy(i64 %30, i64 %31, i64 %34)
  %36 = load i64, i64* @rptr, align 8
  %37 = load i64, i64* @Buff, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i64, i64* @wptr, align 8
  %40 = sub nsw i64 %39, %38
  store i64 %40, i64* @wptr, align 8
  %41 = load i64, i64* @Buff, align 8
  store i64 %41, i64* @rptr, align 8
  br label %42

42:                                               ; preds = %58, %29
  %43 = load i32, i32* %4, align 4
  %44 = load i64, i64* @wptr, align 8
  %45 = load i64, i64* @Buff, align 8
  %46 = load i64, i64* @BUFFSIZE, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* @wptr, align 8
  %49 = sub nsw i64 %47, %48
  %50 = call i32 @read(i32 %43, i64 %44, i64 %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EINTR, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ false, %51 ], [ %57, %54 ]
  br i1 %59, label %42, label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @kprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %70

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @wptr, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* @wptr, align 8
  br label %70

70:                                               ; preds = %65, %63
  %71 = load i64, i64* @rptr, align 8
  %72 = load i64, i64* %5, align 8
  %73 = add i64 %71, %72
  %74 = load i64, i64* @wptr, align 8
  %75 = icmp ule i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i64, i64* @rptr, align 8
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** %3, align 8
  br label %80

79:                                               ; preds = %70
  store i8* null, i8** %3, align 8
  br label %80

80:                                               ; preds = %79, %76, %28, %19
  %81 = load i8*, i8** %3, align 8
  ret i8* %81
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i64) #1

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

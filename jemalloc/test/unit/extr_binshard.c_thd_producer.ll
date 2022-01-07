; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_binshard.c_thd_producer.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_binshard.c_thd_producer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"arenas.create\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unexpected mallctl() failure\00", align 1
@REMOTE_NALLOC = common dso_local global i32 0, align 4
@MALLOCX_TCACHE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thd_producer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thd_producer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to i8**
  store i8** %8, i8*** %3, align 8
  store i64 4, i64* %6, align 8
  %9 = bitcast i32* %4 to i8*
  %10 = call i32 @mallctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %9, i64* %6, i32* null, i32 0)
  %11 = call i32 @assert_d_eq(i32 %10, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @REMOTE_NALLOC, align 4
  %15 = sdiv i32 %14, 2
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load i32, i32* @MALLOCX_TCACHE_NONE, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @MALLOCX_ARENA(i32 %19)
  %21 = or i32 %18, %20
  %22 = call i8* @mallocx(i32 1, i32 %21)
  %23 = load i8**, i8*** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  store i8* %22, i8** %26, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %12

30:                                               ; preds = %12
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @REMOTE_NALLOC, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i32, i32* @MALLOCX_TCACHE_NONE, align 4
  %37 = call i32 @MALLOCX_ARENA(i32 0)
  %38 = or i32 %36, %37
  %39 = call i8* @mallocx(i32 1, i32 %38)
  %40 = load i8**, i8*** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  store i8* %39, i8** %43, align 8
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %31

47:                                               ; preds = %31
  ret i8* null
}

declare dso_local i32 @assert_d_eq(i32, i32, i8*) #1

declare dso_local i32 @mallctl(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i8* @mallocx(i32, i32) #1

declare dso_local i32 @MALLOCX_ARENA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

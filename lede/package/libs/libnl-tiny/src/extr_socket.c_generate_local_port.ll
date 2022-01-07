; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_generate_local_port.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_generate_local_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@used_ports_map = common dso_local global i32* null, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @generate_local_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_local_port() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @getpid()
  %6 = and i32 %5, 4194303
  store i32 %6, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %58, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 32
  br i1 %9, label %10, label %61

10:                                               ; preds = %7
  %11 = load i32*, i32** @used_ports_map, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %58

18:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %54, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %57

22:                                               ; preds = %19
  %23 = load i32*, i32** @used_ports_map, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = and i64 1, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %54

34:                                               ; preds = %22
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = shl i64 1, %36
  %38 = load i32*, i32** @used_ports_map, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = or i64 %43, %37
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load i32, i32* %2, align 4
  %47 = mul nsw i32 %46, 32
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = shl i32 %51, 22
  %53 = add nsw i32 %50, %52
  store i32 %53, i32* %1, align 4
  br label %63

54:                                               ; preds = %33
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %19

57:                                               ; preds = %19
  br label %58

58:                                               ; preds = %57, %17
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %7

61:                                               ; preds = %7
  %62 = load i32, i32* @UINT_MAX, align 4
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %61, %34
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc_include.h_buffer_read_string.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc_include.h_buffer_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_buffer*, i32*, i8**)* @buffer_read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_read_string(%struct.rpc_buffer* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_buffer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store %struct.rpc_buffer* %0, %struct.rpc_buffer** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.rpc_buffer*, %struct.rpc_buffer** %5, align 8
  %11 = call i64 @buffer_read_char(%struct.rpc_buffer* %10, i8* %8)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %47

14:                                               ; preds = %3
  %15 = load i8, i8* %8, align 1
  %16 = zext i8 %15 to i32
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %47

22:                                               ; preds = %14
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 254
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.rpc_buffer*, %struct.rpc_buffer** %5, align 8
  %29 = call i64 @buffer_read_data(%struct.rpc_buffer* %28, i32 3, i8** %9)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %47

32:                                               ; preds = %26
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @memcpy(i32* %33, i8* %34, i32 3)
  br label %36

36:                                               ; preds = %32, %22
  %37 = load %struct.rpc_buffer*, %struct.rpc_buffer** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i8**, i8*** %7, align 8
  %41 = call i64 @buffer_read_data(%struct.rpc_buffer* %37, i32 %39, i8** %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %47

44:                                               ; preds = %36
  %45 = load %struct.rpc_buffer*, %struct.rpc_buffer** %5, align 8
  %46 = call i32 @buffer_read_pad(%struct.rpc_buffer* %45)
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %43, %31, %21, %13
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @buffer_read_char(%struct.rpc_buffer*, i8*) #1

declare dso_local i64 @buffer_read_data(%struct.rpc_buffer*, i32, i8**) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @buffer_read_pad(%struct.rpc_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

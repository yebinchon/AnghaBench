; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_get_hex_char_from_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_get_hex_char_from_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32* }

@get_hex_char_from_oid.hex = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.object_id*, i32)* @get_hex_char_from_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @get_hex_char_from_oid(%struct.object_id* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.object_id*, %struct.object_id** %4, align 8
  %11 = getelementptr inbounds %struct.object_id, %struct.object_id* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = lshr i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [17 x i8], [17 x i8]* @get_hex_char_from_oid.hex, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %3, align 1
  br label %35

22:                                               ; preds = %2
  %23 = load %struct.object_id*, %struct.object_id** %4, align 8
  %24 = getelementptr inbounds %struct.object_id, %struct.object_id* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = lshr i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 15
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [17 x i8], [17 x i8]* @get_hex_char_from_oid.hex, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %3, align 1
  br label %35

35:                                               ; preds = %22, %9
  %36 = load i8, i8* %3, align 1
  ret i8 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

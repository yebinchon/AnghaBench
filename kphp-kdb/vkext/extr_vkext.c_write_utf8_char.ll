; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_write_utf8_char.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_write_utf8_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_utf8_char(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 128
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @write_buff_char(i32 %6)
  br label %53

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 2048
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 6
  %14 = add nsw i32 192, %13
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 63
  %17 = add nsw i32 128, %16
  %18 = call i32 @write_buff_char_2(i32 %14, i32 %17)
  br label %53

19:                                               ; preds = %8
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 65536
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = ashr i32 %23, 12
  %25 = add nsw i32 224, %24
  %26 = load i32, i32* %2, align 4
  %27 = ashr i32 %26, 6
  %28 = and i32 %27, 63
  %29 = add nsw i32 128, %28
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 63
  %32 = add nsw i32 128, %31
  %33 = call i32 @write_buff_char_3(i32 %25, i32 %29, i32 %32)
  br label %53

34:                                               ; preds = %19
  %35 = load i32, i32* %2, align 4
  %36 = icmp slt i32 %35, 2097152
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = ashr i32 %38, 18
  %40 = add nsw i32 240, %39
  %41 = load i32, i32* %2, align 4
  %42 = ashr i32 %41, 12
  %43 = and i32 %42, 63
  %44 = add nsw i32 128, %43
  %45 = load i32, i32* %2, align 4
  %46 = ashr i32 %45, 6
  %47 = and i32 %46, 63
  %48 = add nsw i32 128, %47
  %49 = load i32, i32* %2, align 4
  %50 = and i32 %49, 63
  %51 = add nsw i32 128, %50
  %52 = call i32 @write_buff_char_4(i32 %40, i32 %44, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %5, %11, %22, %37, %34
  ret void
}

declare dso_local i32 @write_buff_char(i32) #1

declare dso_local i32 @write_buff_char_2(i32, i32) #1

declare dso_local i32 @write_buff_char_3(i32, i32, i32) #1

declare dso_local i32 @write_buff_char_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

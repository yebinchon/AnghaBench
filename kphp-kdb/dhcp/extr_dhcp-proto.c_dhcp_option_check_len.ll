; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dhcp/extr_dhcp-proto.c_dhcp_option_check_len.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dhcp/extr_dhcp-proto.c_dhcp_option_check_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dhcp_option_check_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhcp_option_check_len(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %75 [
    i32 160, label %7
    i32 189, label %7
    i32 182, label %11
    i32 162, label %11
    i32 195, label %11
    i32 204, label %11
    i32 156, label %11
    i32 179, label %11
    i32 155, label %11
    i32 132, label %11
    i32 188, label %11
    i32 138, label %11
    i32 137, label %11
    i32 170, label %11
    i32 161, label %11
    i32 193, label %11
    i32 202, label %15
    i32 178, label %15
    i32 184, label %15
    i32 177, label %15
    i32 140, label %19
    i32 134, label %19
    i32 158, label %19
    i32 200, label %19
    i32 146, label %19
    i32 203, label %19
    i32 136, label %19
    i32 150, label %19
    i32 183, label %19
    i32 145, label %19
    i32 151, label %19
    i32 152, label %19
    i32 186, label %23
    i32 176, label %23
    i32 192, label %23
    i32 148, label %23
    i32 187, label %23
    i32 167, label %23
    i32 166, label %23
    i32 135, label %23
    i32 201, label %23
    i32 159, label %23
    i32 175, label %23
    i32 190, label %23
    i32 157, label %27
    i32 174, label %38
    i32 147, label %49
    i32 133, label %49
    i32 173, label %49
    i32 191, label %49
    i32 181, label %49
    i32 198, label %49
    i32 180, label %49
    i32 185, label %49
    i32 149, label %49
    i32 139, label %49
    i32 168, label %49
    i32 163, label %49
    i32 171, label %49
    i32 172, label %49
    i32 128, label %49
    i32 129, label %49
    i32 165, label %49
    i32 144, label %49
    i32 153, label %49
    i32 164, label %49
    i32 194, label %49
    i32 197, label %49
    i32 196, label %49
    i32 141, label %49
    i32 142, label %49
    i32 154, label %60
    i32 143, label %60
    i32 130, label %71
    i32 169, label %71
    i32 131, label %71
    i32 199, label %71
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %3, align 4
  br label %76

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  br label %76

15:                                               ; preds = %2, %2, %2, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 2
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %76

19:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 4
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %76

23:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 1
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %76

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 2
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %76

38:                                               ; preds = %2
  %39 = load i32, i32* %5, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 3
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i1 [ false, %38 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %76

49:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 4
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 3
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %52, %49
  %58 = phi i1 [ false, %49 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %76

60:                                               ; preds = %2, %2
  %61 = load i32, i32* %5, align 4
  %62 = icmp sge i32 %61, 8
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, 7
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %63, %60
  %69 = phi i1 [ false, %60 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %76

71:                                               ; preds = %2, %2, %2, %2
  %72 = load i32, i32* %5, align 4
  %73 = icmp sge i32 %72, 0
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %71, %68, %57, %46, %35, %23, %19, %15, %11, %7
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/deps/http-parser/extr_http_parser.c_http_parse_host_char.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/http-parser/extr_http_parser.c_http_parse_host_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_http_host_dead = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @http_parse_host_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_parse_host_char(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %63 [
    i32 129, label %7
    i32 128, label %7
    i32 133, label %18
    i32 136, label %29
    i32 131, label %35
    i32 132, label %41
    i32 130, label %47
    i32 135, label %57
    i32 134, label %57
  ]

7:                                                ; preds = %2, %2
  %8 = load i8, i8* %5, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 64
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 133, i32* %3, align 4
  br label %66

12:                                               ; preds = %7
  %13 = load i8, i8* %5, align 1
  %14 = call i32 @IS_USERINFO_CHAR(i8 signext %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 129, i32* %3, align 4
  br label %66

17:                                               ; preds = %12
  br label %64

18:                                               ; preds = %2
  %19 = load i8, i8* %5, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 91
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 130, i32* %3, align 4
  br label %66

23:                                               ; preds = %18
  %24 = load i8, i8* %5, align 1
  %25 = call i32 @IS_HOST_CHAR(i8 signext %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 136, i32* %3, align 4
  br label %66

28:                                               ; preds = %23
  br label %64

29:                                               ; preds = %2
  %30 = load i8, i8* %5, align 1
  %31 = call i32 @IS_HOST_CHAR(i8 signext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 136, i32* %3, align 4
  br label %66

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %2, %34
  %36 = load i8, i8* %5, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 58
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 134, i32* %3, align 4
  br label %66

40:                                               ; preds = %35
  br label %64

41:                                               ; preds = %2
  %42 = load i8, i8* %5, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 93
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 131, i32* %3, align 4
  br label %66

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %2, %46
  %48 = load i8, i8* %5, align 1
  %49 = call i32 @IS_HEX(i8 signext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %5, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 58
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47
  store i32 132, i32* %3, align 4
  br label %66

56:                                               ; preds = %51
  br label %64

57:                                               ; preds = %2, %2
  %58 = load i8, i8* %5, align 1
  %59 = call i32 @IS_NUM(i8 signext %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 135, i32* %3, align 4
  br label %66

62:                                               ; preds = %57
  br label %64

63:                                               ; preds = %2
  br label %64

64:                                               ; preds = %63, %62, %56, %40, %28, %17
  %65 = load i32, i32* @s_http_host_dead, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %61, %55, %45, %39, %33, %27, %22, %16, %11
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @IS_USERINFO_CHAR(i8 signext) #1

declare dso_local i32 @IS_HOST_CHAR(i8 signext) #1

declare dso_local i32 @IS_HEX(i8 signext) #1

declare dso_local i32 @IS_NUM(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

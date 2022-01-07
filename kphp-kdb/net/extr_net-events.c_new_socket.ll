; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_new_socket.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_new_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SM_UDP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@SM_IPV6_ONLY = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"setting IPV6_V6ONLY\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"setting O_NONBLOCK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @new_socket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SM_IPV6, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @AF_INET6, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @AF_INET, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SM_UDP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @SOCK_DGRAM, align 4
  br label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @SOCK_STREAM, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = call i32 @socket(i32 %17, i32 %27, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %77

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SM_IPV6, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SM_IPV6_ONLY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @IPPROTO_IPV6, align 4
  %45 = load i32, i32* @IPV6_V6ONLY, align 4
  %46 = call i64 @setsockopt(i32 %43, i32 %44, i32 %45, i32* %7, i32 4)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @close(i32 %50)
  store i32 -1, i32* %3, align 4
  br label %77

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %77

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @F_GETFL, align 4
  %61 = call i32 @fcntl(i32 %59, i32 %60, i32 0)
  store i32 %61, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @F_SETFL, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @O_NONBLOCK, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @fcntl(i32 %64, i32 %65, i32 %68)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63, %58
  %72 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @close(i32 %73)
  store i32 -1, i32* %3, align 4
  br label %77

75:                                               ; preds = %63
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %71, %56, %48, %30
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

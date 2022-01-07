; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_mconsole_user.c_mconsole_reply_len.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_mconsole_user.c_mconsole_reply_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_request = type { i32, i64, i32 }
%struct.mconsole_reply = type { i32, i32, i8*, i32 }
%struct.sockaddr = type { i32 }

@MCONSOLE_MAX_DATA = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mconsole_reply_len(%struct.mc_request* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mc_request*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mconsole_reply, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mc_request* %0, %struct.mc_request** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  br label %15

15:                                               ; preds = %75, %5
  %16 = load i32, i32* %10, align 4
  %17 = getelementptr inbounds %struct.mconsole_reply, %struct.mconsole_reply* %12, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i64, i64* @MCONSOLE_MAX_DATA, align 8
  %20 = sub nsw i64 %19, 1
  %21 = call i32 @MIN(i32 %18, i64 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.mconsole_reply, %struct.mconsole_reply* %12, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  br label %30

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.mconsole_reply, %struct.mconsole_reply* %12, i32 0, i32 1
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = getelementptr inbounds %struct.mconsole_reply, %struct.mconsole_reply* %12, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @memcpy(i8* %32, i8* %33, i32 %34)
  %36 = getelementptr inbounds %struct.mconsole_reply, %struct.mconsole_reply* %12, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  %50 = getelementptr inbounds %struct.mconsole_reply, %struct.mconsole_reply* %12, i32 0, i32 3
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.mconsole_reply, %struct.mconsole_reply* %12, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add i64 24, %53
  %55 = sub i64 %54, 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load %struct.mc_request*, %struct.mc_request** %7, align 8
  %58 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.mc_request*, %struct.mc_request** %7, align 8
  %62 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.sockaddr*
  %65 = load %struct.mc_request*, %struct.mc_request** %7, align 8
  %66 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sendto(i32 %59, %struct.mconsole_reply* %12, i32 %60, i32 0, %struct.sockaddr* %64, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %30
  %72 = load i32, i32* @errno, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %79

74:                                               ; preds = %30
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %15, label %78

78:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %71
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sendto(i32, %struct.mconsole_reply*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

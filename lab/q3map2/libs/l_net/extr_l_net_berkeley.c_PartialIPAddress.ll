; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_PartialIPAddress.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_PartialIPAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_s = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@net_hostport = common dso_local global i64 0, align 8
@myAddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_s*)* @PartialIPAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PartialIPAddress(i8* %0, %struct.sockaddr_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_s*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_s* %1, %struct.sockaddr_s** %5, align 8
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8 46, i8* %11, align 16
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8* %12, i8** %7, align 8
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcpy(i8* %14, i8* %15)
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 46
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %21, %2
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  br label %25

25:                                               ; preds = %65, %24
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 46
  br i1 %29, label %30, label %72

30:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp slt i32 %34, 48
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sgt i32 %39, 57
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %30
  store i32 -1, i32* %3, align 4
  br label %93

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %56, %42
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp slt i32 %46, 48
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sgt i32 %51, 57
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i1 [ true, %43 ], [ %52, %48 ]
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %57, 10
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %7, align 8
  %61 = load i8, i8* %59, align 1
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 %58, %62
  %64 = sub nsw i32 %63, 48
  store i32 %64, i32* %9, align 4
  br label %43

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  %67 = shl i32 %66, 8
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = shl i32 %68, 8
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %8, align 4
  br label %25

72:                                               ; preds = %25
  %73 = load i32, i32* @AF_INET, align 4
  %74 = load %struct.sockaddr_s*, %struct.sockaddr_s** %5, align 8
  %75 = getelementptr inbounds %struct.sockaddr_s, %struct.sockaddr_s* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i64, i64* @net_hostport, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @htons(i32 %77)
  %79 = load %struct.sockaddr_s*, %struct.sockaddr_s** %5, align 8
  %80 = bitcast %struct.sockaddr_s* %79 to %struct.sockaddr_in*
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @myAddr, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @htonl(i32 %83)
  %85 = and i32 %82, %84
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @htonl(i32 %86)
  %88 = or i32 %85, %87
  %89 = load %struct.sockaddr_s*, %struct.sockaddr_s** %5, align 8
  %90 = bitcast %struct.sockaddr_s* %89 to %struct.sockaddr_in*
  %91 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 4
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %72, %41
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

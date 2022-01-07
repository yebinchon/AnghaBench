; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_GetAddrFromName.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_GetAddrFromName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_s = type { i32 }
%struct.hostent = type { i64* }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@net_hostport = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WINS_GetAddrFromName(i8* %0, %struct.sockaddr_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_s*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_s* %1, %struct.sockaddr_s** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sge i32 %10, 48
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sle i32 %16, 57
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.sockaddr_s*, %struct.sockaddr_s** %5, align 8
  %21 = call i32 @PartialIPAddress(i8* %19, %struct.sockaddr_s* %20)
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %12, %2
  %23 = load i8*, i8** %4, align 8
  %24 = call %struct.hostent* @gethostbyname(i8* %23)
  store %struct.hostent* %24, %struct.hostent** %6, align 8
  %25 = load %struct.hostent*, %struct.hostent** %6, align 8
  %26 = icmp ne %struct.hostent* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %49

28:                                               ; preds = %22
  %29 = load i32, i32* @AF_INET, align 4
  %30 = load %struct.sockaddr_s*, %struct.sockaddr_s** %5, align 8
  %31 = getelementptr inbounds %struct.sockaddr_s, %struct.sockaddr_s* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* @net_hostport, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @htons(i32 %33)
  %35 = load %struct.sockaddr_s*, %struct.sockaddr_s** %5, align 8
  %36 = bitcast %struct.sockaddr_s* %35 to %struct.sockaddr_in*
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.hostent*, %struct.hostent** %6, align 8
  %39 = getelementptr inbounds %struct.hostent, %struct.hostent* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sockaddr_s*, %struct.sockaddr_s** %5, align 8
  %46 = bitcast %struct.sockaddr_s* %45 to %struct.sockaddr_in*
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %28, %27, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @PartialIPAddress(i8*, %struct.sockaddr_s*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

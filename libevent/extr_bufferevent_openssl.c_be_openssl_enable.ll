; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_be_openssl_enable.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_be_openssl_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_openssl = type { i64 }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i16)* @be_openssl_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_openssl_enable(%struct.bufferevent* %0, i16 signext %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.bufferevent_openssl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %9 = call %struct.bufferevent_openssl* @upcast(%struct.bufferevent* %8)
  store %struct.bufferevent_openssl* %9, %struct.bufferevent_openssl** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i16, i16* %4, align 2
  %11 = sext i16 %10 to i32
  %12 = load i16, i16* @EV_READ, align 2
  %13 = sext i16 %12 to i32
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %18 = call i32 @start_reading(%struct.bufferevent_openssl* %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i16, i16* %4, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* @EV_WRITE, align 2
  %23 = sext i16 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %28 = call i32 @start_writing(%struct.bufferevent_openssl* %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %31 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %29
  %35 = load i16, i16* %4, align 2
  %36 = sext i16 %35 to i32
  %37 = load i16, i16* @EV_READ, align 2
  %38 = sext i16 %37 to i32
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %43 = call i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent* %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i16, i16* %4, align 2
  %46 = sext i16 %45 to i32
  %47 = load i16, i16* @EV_WRITE, align 2
  %48 = sext i16 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %53 = call i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i16, i16* %4, align 2
  %56 = sext i16 %55 to i32
  %57 = load i16, i16* @EV_READ, align 2
  %58 = sext i16 %57 to i32
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %63 = call i32 @consider_reading(%struct.bufferevent_openssl* %62)
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i16, i16* %4, align 2
  %66 = sext i16 %65 to i32
  %67 = load i16, i16* @EV_WRITE, align 2
  %68 = sext i16 %67 to i32
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %73 = call i32 @consider_writing(%struct.bufferevent_openssl* %72)
  br label %74

74:                                               ; preds = %71, %64
  br label %75

75:                                               ; preds = %74, %29
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i1 [ true, %75 ], [ %80, %78 ]
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 -1, i32 0
  ret i32 %84
}

declare dso_local %struct.bufferevent_openssl* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @start_reading(%struct.bufferevent_openssl*) #1

declare dso_local i32 @start_writing(%struct.bufferevent_openssl*) #1

declare dso_local i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @consider_reading(%struct.bufferevent_openssl*) #1

declare dso_local i32 @consider_writing(%struct.bufferevent_openssl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

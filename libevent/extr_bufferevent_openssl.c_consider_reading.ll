; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_consider_reading.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_consider_reading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { %struct.TYPE_2__, i64, i32, i64 }
%struct.TYPE_2__ = type { %struct.bufferevent, i64 }
%struct.bufferevent = type { i32, i32 }

@WRITE_FRAME = common dso_local global i32 0, align 4
@OP_BLOCKED = common dso_local global i32 0, align 4
@OP_ERR = common dso_local global i32 0, align 4
@OP_MADE_PROGRESS = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent_openssl*)* @consider_reading to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @consider_reading(%struct.bufferevent_openssl* %0) #0 {
  %2 = alloca %struct.bufferevent_openssl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %2, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %9 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %14 = load i32, i32* @WRITE_FRAME, align 4
  %15 = call i32 @do_write(%struct.bufferevent_openssl* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @OP_BLOCKED, align 4
  %18 = load i32, i32* @OP_ERR, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %24

23:                                               ; preds = %12
  br label %7

24:                                               ; preds = %22, %7
  %25 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %26 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %112

30:                                               ; preds = %24
  %31 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %32 = call i32 @bytes_to_read(%struct.bufferevent_openssl* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %72, %30
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %33
  %37 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @do_read(%struct.bufferevent_openssl* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @OP_BLOCKED, align 4
  %45 = load i32, i32* @OP_ERR, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %73

50:                                               ; preds = %36
  %51 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %52 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %73

57:                                               ; preds = %50
  %58 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %59 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @SSL_pending(i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %57
  %65 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %66 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %71 = call i32 @bytes_to_read(%struct.bufferevent_openssl* %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %64, %57
  br label %33

73:                                               ; preds = %56, %49, %33
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @OP_MADE_PROGRESS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %80 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store %struct.bufferevent* %81, %struct.bufferevent** %6, align 8
  %82 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %83 = load i32, i32* @EV_READ, align 4
  %84 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %82, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %78, %73
  %86 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %87 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %112, label %90

90:                                               ; preds = %85
  %91 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %92 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %90
  %97 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %98 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @EV_READ, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %96, %90
  %106 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %107 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %108, i32 0, i32 1
  %110 = call i32 @event_del(i32* %109)
  br label %111

111:                                              ; preds = %105, %96
  br label %112

112:                                              ; preds = %29, %111, %85
  ret void
}

declare dso_local i32 @do_write(%struct.bufferevent_openssl*, i32) #1

declare dso_local i32 @bytes_to_read(%struct.bufferevent_openssl*) #1

declare dso_local i32 @do_read(%struct.bufferevent_openssl*, i32) #1

declare dso_local i32 @SSL_pending(i32) #1

declare dso_local i32 @bufferevent_trigger_nolock_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @event_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

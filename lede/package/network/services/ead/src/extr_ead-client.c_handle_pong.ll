; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead-client.c_handle_pong.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead-client.c_handle_pong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ead_msg_pong = type { i8*, i32 }

@msg = common dso_local global %struct.TYPE_3__* null, align 8
@auth_type = common dso_local global i32 0, align 4
@nid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%04x: %s\0A\00", align 1
@sid = common dso_local global i32 0, align 4
@pong = common dso_local global %struct.ead_msg_pong* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @handle_pong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_pong() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ead_msg_pong*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msg, align 8
  %5 = load %struct.ead_msg_pong*, %struct.ead_msg_pong** %2, align 8
  %6 = ptrtoint %struct.ead_msg_pong* %5 to i32
  %7 = call %struct.ead_msg_pong* @EAD_DATA(%struct.TYPE_3__* %4, i32 %6)
  store %struct.ead_msg_pong* %7, %struct.ead_msg_pong** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msg, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ntohl(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = sub i64 %12, 16
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %44

18:                                               ; preds = %0
  %19 = load %struct.ead_msg_pong*, %struct.ead_msg_pong** %2, align 8
  %20 = getelementptr inbounds %struct.ead_msg_pong, %struct.ead_msg_pong* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load %struct.ead_msg_pong*, %struct.ead_msg_pong** %2, align 8
  %26 = getelementptr inbounds %struct.ead_msg_pong, %struct.ead_msg_pong* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ntohs(i32 %27)
  store i32 %28, i32* @auth_type, align 4
  %29 = load i32, i32* @nid, align 4
  %30 = icmp eq i32 %29, 65535
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msg, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ntohs(i32 %34)
  %36 = load %struct.ead_msg_pong*, %struct.ead_msg_pong** %2, align 8
  %37 = getelementptr inbounds %struct.ead_msg_pong, %struct.ead_msg_pong* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %38)
  br label %40

40:                                               ; preds = %31, %18
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msg, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* @sid, align 4
  store i32 1, i32* %1, align 4
  br label %44

44:                                               ; preds = %40, %17
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local %struct.ead_msg_pong* @EAD_DATA(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

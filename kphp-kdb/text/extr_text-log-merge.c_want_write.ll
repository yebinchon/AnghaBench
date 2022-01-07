; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-merge.c_want_write.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-merge.c_want_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.lev_generic = type { i64 }
%struct.lev_add_message = type { i64, i32, i32, i32, i32 }

@LEV_TIMESTAMP = common dso_local global i32 0, align 4
@t_now = common dso_local global i64 0, align 8
@LEV_TX_ADD_MESSAGE = common dso_local global i32 0, align 4
@LEV_TX_ADD_MESSAGE_LF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"warning: binlog message (type=%02x, date=%d/%d, user_id=%d, peer_id=%d) has zero legacy id, ignored\0A\00", align 1
@Header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @want_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @want_write(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lev_generic*, align 8
  %7 = alloca %struct.lev_add_message*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.lev_generic*
  store %struct.lev_generic* %9, %struct.lev_generic** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @LEV_TIMESTAMP, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.lev_generic*, %struct.lev_generic** %6, align 8
  %15 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @t_now, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.lev_generic*, %struct.lev_generic** %6, align 8
  %21 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* @t_now, align 8
  br label %23

23:                                               ; preds = %19, %13, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @LEV_TX_ADD_MESSAGE, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @LEV_TX_ADD_MESSAGE, align 4
  %30 = add nsw i32 %29, 255
  %31 = icmp sle i32 %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @LEV_TX_ADD_MESSAGE_LF, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %79

36:                                               ; preds = %32, %27
  %37 = load %struct.lev_generic*, %struct.lev_generic** %6, align 8
  %38 = bitcast %struct.lev_generic* %37 to %struct.lev_add_message*
  store %struct.lev_add_message* %38, %struct.lev_add_message** %7, align 8
  %39 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %40 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @stderr, align 4
  %45 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %46 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 255
  %49 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %50 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* @t_now, align 8
  %53 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %54 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %57 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i64 %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %43, %36
  %61 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %62 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 0), align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @mode, align 4
  %68 = or i32 %67, 1
  store i32 %68, i32* @mode, align 4
  store i32 1, i32* %3, align 4
  br label %85

69:                                               ; preds = %60
  %70 = load %struct.lev_add_message*, %struct.lev_add_message** %7, align 8
  %71 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 1), align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @mode, align 4
  %77 = or i32 %76, 2
  store i32 %77, i32* @mode, align 4
  store i32 2, i32* %3, align 4
  br label %85

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %32
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @LEV_TIMESTAMP, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %85

84:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83, %75, %66
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_rpc_out.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_rpc_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_state = type { i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [59 x i8] c"The entire rpc->buf should be larger than LARGE_PACKET_MAX\00", align 1
@PACKET_READ_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @rpc_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rpc_out(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rpc_state*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = mul i64 %14, %15
  store i64 %16, i64* %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.rpc_state*
  store %struct.rpc_state* %18, %struct.rpc_state** %11, align 8
  %19 = load %struct.rpc_state*, %struct.rpc_state** %11, align 8
  %20 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.rpc_state*, %struct.rpc_state** %11, align 8
  %23 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %21, %24
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %4
  %29 = load %struct.rpc_state*, %struct.rpc_state** %11, align 8
  %30 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.rpc_state*, %struct.rpc_state** %11, align 8
  %32 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.rpc_state*, %struct.rpc_state** %11, align 8
  %34 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.rpc_state*, %struct.rpc_state** %11, align 8
  %36 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %28
  %40 = load %struct.rpc_state*, %struct.rpc_state** %11, align 8
  %41 = call i32 @rpc_read_from_out(%struct.rpc_state* %40, i32 0, i64* %12, i32* %13)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = call i32 @BUG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @PACKET_READ_FLUSH, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.rpc_state*, %struct.rpc_state** %11, align 8
  %51 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52, %28
  br label %54

54:                                               ; preds = %53, %4
  %55 = load %struct.rpc_state*, %struct.rpc_state** %11, align 8
  %56 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load %struct.rpc_state*, %struct.rpc_state** %11, align 8
  %64 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  store i64 0, i64* %5, align 8
  br label %89

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %10, align 8
  store i64 %71, i64* %12, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.rpc_state*, %struct.rpc_state** %11, align 8
  %75 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.rpc_state*, %struct.rpc_state** %11, align 8
  %78 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %76, %79
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @memcpy(i8* %73, i64 %80, i64 %81)
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.rpc_state*, %struct.rpc_state** %11, align 8
  %85 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, %83
  store i64 %87, i64* %85, align 8
  %88 = load i64, i64* %12, align 8
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %72, %62
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local i32 @rpc_read_from_out(%struct.rpc_state*, i32, i64*, i32*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

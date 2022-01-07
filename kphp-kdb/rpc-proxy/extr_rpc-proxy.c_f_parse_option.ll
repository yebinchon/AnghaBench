; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_f_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_f_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@only_first_cluster = common dso_local global i32 0, align 4
@test_mode = common dso_local global i32 0, align 4
@tcp_buffers = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@rpc_crc32_mode = common dso_local global i32 0, align 4
@rpc_disable_crc32_check = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@dynamic_data_buffer_size = common dso_local global i64 0, align 8
@max_binlog_size = common dso_local global i64 0, align 8
@ping_interval = common dso_local global i8* null, align 8
@PING_INTERVAL = common dso_local global i8* null, align 8
@bname = common dso_local global i32 0, align 4
@binlog_cyclic_mode = common dso_local global i32 0, align 4
@binlog_mode_on = common dso_local global i32 0, align 4
@vv_tl_drop_probability = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"nice\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %94 [
    i32 102, label %7
    i32 84, label %10
    i32 78, label %13
    i32 67, label %16
    i32 72, label %21
    i32 83, label %21
    i32 121, label %67
    i32 66, label %75
    i32 70, label %79
    i32 81, label %82
    i32 110, label %85
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @only_first_cluster, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @only_first_cluster, align 4
  store i32 0, i32* %2, align 4
  br label %96

10:                                               ; preds = %1
  %11 = load i32, i32* @test_mode, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @test_mode, align 4
  store i32 0, i32* %2, align 4
  br label %96

13:                                               ; preds = %1
  %14 = load i32, i32* @tcp_buffers, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @tcp_buffers, align 4
  store i32 0, i32* %2, align 4
  br label %96

16:                                               ; preds = %1
  %17 = load i32, i32* @optarg, align 4
  %18 = call i32 @atoi(i32 %17)
  store i32 %18, i32* @rpc_crc32_mode, align 4
  %19 = load i32, i32* @rpc_crc32_mode, align 4
  %20 = and i32 %19, 1
  store i32 %20, i32* @rpc_disable_crc32_check, align 4
  store i32 0, i32* %2, align 4
  br label %96

21:                                               ; preds = %1, %1
  store i8 0, i8* %4, align 1
  %22 = load i32, i32* @optarg, align 4
  %23 = call i32 @sscanf(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %5, i8* %4)
  %24 = icmp sge i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8, i8* %4, align 1
  %28 = sext i8 %27 to i32
  %29 = or i32 %28, 32
  switch i32 %29, label %42 [
    i32 107, label %30
    i32 109, label %33
    i32 103, label %36
    i32 116, label %39
  ]

30:                                               ; preds = %21
  %31 = load i64, i64* %5, align 8
  %32 = shl i64 %31, 10
  store i64 %32, i64* %5, align 8
  br label %48

33:                                               ; preds = %21
  %34 = load i64, i64* %5, align 8
  %35 = shl i64 %34, 20
  store i64 %35, i64* %5, align 8
  br label %48

36:                                               ; preds = %21
  %37 = load i64, i64* %5, align 8
  %38 = shl i64 %37, 30
  store i64 %38, i64* %5, align 8
  br label %48

39:                                               ; preds = %21
  %40 = load i64, i64* %5, align 8
  %41 = shl i64 %40, 40
  store i64 %41, i64* %5, align 8
  br label %48

42:                                               ; preds = %21
  %43 = load i8, i8* %4, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 32
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %42, %39, %36, %33, %30
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 72
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i64, i64* %5, align 8
  %53 = icmp sge i64 %52, 1048576
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i64, i64* %5, align 8
  %56 = icmp sle i64 %55, 107374182400
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i64, i64* %5, align 8
  store i64 %58, i64* @dynamic_data_buffer_size, align 8
  br label %59

59:                                               ; preds = %57, %54, %51
  br label %66

60:                                               ; preds = %48
  %61 = load i32, i32* %3, align 4
  %62 = icmp eq i32 %61, 83
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i64, i64* %5, align 8
  store i64 %64, i64* @max_binlog_size, align 8
  br label %65

65:                                               ; preds = %63, %60
  br label %66

66:                                               ; preds = %65, %59
  br label %95

67:                                               ; preds = %1
  %68 = load i32, i32* @optarg, align 4
  %69 = call i8* @atof(i32 %68)
  store i8* %69, i8** @ping_interval, align 8
  %70 = load i8*, i8** @ping_interval, align 8
  %71 = icmp ule i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i8*, i8** @PING_INTERVAL, align 8
  store i8* %73, i8** @ping_interval, align 8
  br label %74

74:                                               ; preds = %72, %67
  br label %95

75:                                               ; preds = %1
  %76 = load i32, i32* @optarg, align 4
  store i32 %76, i32* @bname, align 4
  store i32 1, i32* @binlog_cyclic_mode, align 4
  %77 = load i32, i32* @binlog_mode_on, align 4
  %78 = or i32 %77, 1
  store i32 %78, i32* @binlog_mode_on, align 4
  br label %95

79:                                               ; preds = %1
  %80 = load i32, i32* @binlog_mode_on, align 4
  %81 = or i32 %80, 2
  store i32 %81, i32* @binlog_mode_on, align 4
  br label %95

82:                                               ; preds = %1
  %83 = load i32, i32* @optarg, align 4
  %84 = call i8* @atof(i32 %83)
  store i8* %84, i8** @vv_tl_drop_probability, align 8
  br label %95

85:                                               ; preds = %1
  store i32 0, i32* @errno, align 4
  %86 = load i32, i32* @optarg, align 4
  %87 = call i32 @atoi(i32 %86)
  %88 = call i32 @nice(i32 %87)
  %89 = load i32, i32* @errno, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %85
  br label %95

94:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %96

95:                                               ; preds = %93, %82, %79, %75, %74, %66
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %94, %16, %13, %10, %7
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i32, i8*, i64*, i8*) #1

declare dso_local i8* @atof(i32) #1

declare dso_local i32 @nice(i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

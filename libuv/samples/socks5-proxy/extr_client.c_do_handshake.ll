; ModuleID = '/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_client.c_do_handshake.c'
source_filename = "/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_client.c_do_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@c_done = common dso_local global i64 0, align 8
@c_stop = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"read error: %s\00", align 1
@s5_ok = common dso_local global i32 0, align 4
@s_handshake = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"junk in handshake\00", align 1
@s5_auth_select = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"handshake error: %s\00", align 1
@S5_AUTH_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"\05\00\00", align 1
@s_req_start = common dso_local global i32 0, align 4
@S5_AUTH_PASSWD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"\05\FF\00", align 1
@s_kill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @do_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_handshake(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @c_done, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @c_stop, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i64, i64* @c_stop, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @uv_strerror(i64 %38)
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = call i32 @do_kill(%struct.TYPE_12__* %41)
  store i32 %42, i32* %2, align 4
  br label %116

43:                                               ; preds = %1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %8, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @s5_parse(i32* %52, i32** %7, i64* %8)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @s5_ok, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = call i32 @conn_read(%struct.TYPE_11__* %58)
  %60 = load i32, i32* @s_handshake, align 4
  store i32 %60, i32* %2, align 4
  br label %116

61:                                               ; preds = %43
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = call i32 @do_kill(%struct.TYPE_12__* %66)
  store i32 %67, i32* %2, align 4
  br label %116

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @s5_auth_select, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @s5_strerror(i32 %73)
  %75 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = call i32 @do_kill(%struct.TYPE_12__* %76)
  store i32 %77, i32* %2, align 4
  br label %116

78:                                               ; preds = %68
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @s5_auth_methods(i32* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @S5_AUTH_NONE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = call i64 @can_auth_none(i32 %88, %struct.TYPE_12__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* @S5_AUTH_NONE, align 4
  %95 = call i32 @s5_select_auth(i32* %93, i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = call i32 @conn_write(%struct.TYPE_11__* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %98 = load i32, i32* @s_req_start, align 4
  store i32 %98, i32* %2, align 4
  br label %116

99:                                               ; preds = %85, %78
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @S5_AUTH_PASSWD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = call i64 @can_auth_passwd(i32 %107, %struct.TYPE_12__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %104, %99
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = call i32 @conn_write(%struct.TYPE_11__* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %115 = load i32, i32* @s_kill, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %92, %72, %64, %57, %35
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @uv_strerror(i64) #1

declare dso_local i32 @do_kill(%struct.TYPE_12__*) #1

declare dso_local i32 @s5_parse(i32*, i32**, i64*) #1

declare dso_local i32 @conn_read(%struct.TYPE_11__*) #1

declare dso_local i32 @s5_strerror(i32) #1

declare dso_local i32 @s5_auth_methods(i32*) #1

declare dso_local i64 @can_auth_none(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @s5_select_auth(i32*, i32) #1

declare dso_local i32 @conn_write(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i64 @can_auth_passwd(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

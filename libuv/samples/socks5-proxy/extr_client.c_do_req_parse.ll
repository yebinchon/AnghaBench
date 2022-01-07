; ModuleID = '/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_client.c_do_req_parse.c'
source_filename = "/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_client.c_do_req_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_16__, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i32, i8*, i32, i32, i8*, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i32 }

@c_done = common dso_local global i64 0, align 8
@c_stop = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"read error: %s\00", align 1
@s5_ok = common dso_local global i32 0, align 4
@s_req_parse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"junk in request %u\00", align 1
@s5_exec_cmd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"request error: %s\00", align 1
@s5_cmd_tcp_bind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"BIND requests are not supported.\00", align 1
@s5_cmd_udp_assoc = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"UDP ASSOC requests are not supported.\00", align 1
@s5_cmd_tcp_connect = common dso_local global i64 0, align 8
@s5_atyp_host = common dso_local global i64 0, align 8
@s_req_lookup = common dso_local global i32 0, align 4
@s5_atyp_ipv4 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@s5_atyp_ipv6 = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @do_req_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_req_parse(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %4, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @c_done, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @c_stop, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @c_stop, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @c_stop, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load i64, i64* @c_stop, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @uv_strerror(i64 %54)
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = call i32 @do_kill(%struct.TYPE_15__* %57)
  store i32 %58, i32* %2, align 4
  br label %207

59:                                               ; preds = %1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %7, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %8, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = call i32 @s5_parse(%struct.TYPE_13__* %68, i32** %7, i64* %8)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @s5_ok, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = call i32 @conn_read(%struct.TYPE_14__* %74)
  %76 = load i32, i32* @s_req_parse, align 4
  store i32 %76, i32* %2, align 4
  br label %207

77:                                               ; preds = %59
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i64, i64* %8, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = call i32 @do_kill(%struct.TYPE_15__* %84)
  store i32 %85, i32* %2, align 4
  br label %207

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @s5_exec_cmd, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @s5_strerror(i32 %91)
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %95 = call i32 @do_kill(%struct.TYPE_15__* %94)
  store i32 %95, i32* %2, align 4
  br label %207

96:                                               ; preds = %86
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @s5_cmd_tcp_bind, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = call i32 @do_kill(%struct.TYPE_15__* %104)
  store i32 %105, i32* %2, align 4
  br label %207

106:                                              ; preds = %96
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @s5_cmd_udp_assoc, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = call i32 @do_kill(%struct.TYPE_15__* %114)
  store i32 %115, i32* %2, align 4
  br label %207

116:                                              ; preds = %106
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @s5_cmd_tcp_connect, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @ASSERT(i32 %122)
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @s5_atyp_host, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %116
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  %135 = call i32 @conn_getaddrinfo(%struct.TYPE_14__* %130, i8* %134)
  %136 = load i32, i32* @s_req_lookup, align 4
  store i32 %136, i32* %2, align 4
  br label %207

137:                                              ; preds = %116
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @s5_atyp_ipv4, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %169

143:                                              ; preds = %137
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = call i32 @memset(%struct.TYPE_16__* %146, i32 0, i32 40)
  %148 = load i32, i32* @AF_INET, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 5
  store i32 %148, i32* %152, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @htons(i32 %155)
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 4
  store i8* %156, i8** %160, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @memcpy(i32* %164, i64 %167, i32 4)
  br label %204

169:                                              ; preds = %137
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @s5_atyp_ipv6, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %201

175:                                              ; preds = %169
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = call i32 @memset(%struct.TYPE_16__* %178, i32 0, i32 40)
  %180 = load i32, i32* @AF_INET6, align 4
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  store i32 %180, i32* %184, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = call i8* @htons(i32 %187)
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  store i8* %188, i8** %192, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @memcpy(i32* %196, i64 %199, i32 4)
  br label %203

201:                                              ; preds = %169
  %202 = call i32 (...) @UNREACHABLE()
  br label %203

203:                                              ; preds = %201, %175
  br label %204

204:                                              ; preds = %203, %143
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %206 = call i32 @do_req_connect_start(%struct.TYPE_15__* %205)
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %204, %129, %112, %102, %90, %80, %73, %51
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @uv_strerror(i64) #1

declare dso_local i32 @do_kill(%struct.TYPE_15__*) #1

declare dso_local i32 @s5_parse(%struct.TYPE_13__*, i32**, i64*) #1

declare dso_local i32 @conn_read(%struct.TYPE_14__*) #1

declare dso_local i32 @s5_strerror(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @conn_getaddrinfo(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @UNREACHABLE(...) #1

declare dso_local i32 @do_req_connect_start(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

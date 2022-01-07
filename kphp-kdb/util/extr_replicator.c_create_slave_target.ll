; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_create_slave_target.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_create_slave_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32, %struct.in_addr }
%struct.in_addr = type { i64 }
%struct.related_binlog = type { i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.hostent = type { i8*, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot resolve %s\0A\00", align 1
@default_ct = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot resolve %s: bad address type %d\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"creating target %s:%d (ip %s)\0A\00", align 1
@LRF_BROKEN = common dso_local global i32 0, align 4
@double_send_recv = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_slave_target(%struct.related_binlog* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.related_binlog*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.related_binlog* %0, %struct.related_binlog** %3, align 8
  %9 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %10 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @strrchr(i8* %14, i8 signext 58)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp uge i8* %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 63
  %26 = icmp ule i8* %23, %25
  br label %27

27:                                               ; preds = %22, %18, %1
  %28 = phi i1 [ false, %18 ], [ false, %1 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memcpy(i8* %31, i8* %32, i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %44
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %47 = call %struct.hostent* @kdb_gethostbyname(i8* %46)
  store %struct.hostent* %47, %struct.hostent** %6, align 8
  %48 = icmp ne %struct.hostent* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %27
  %50 = load %struct.hostent*, %struct.hostent** %6, align 8
  %51 = getelementptr inbounds %struct.hostent, %struct.hostent* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.hostent*, %struct.hostent** %6, align 8
  %56 = getelementptr inbounds %struct.hostent, %struct.hostent* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %54, %49, %27
  %60 = load i32, i32* @stderr, align 4
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %62 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = call i32 @exit(i32 2) #4
  unreachable

64:                                               ; preds = %54
  %65 = load %struct.hostent*, %struct.hostent** %6, align 8
  %66 = getelementptr inbounds %struct.hostent, %struct.hostent* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %94 [
    i32 129, label %68
    i32 128, label %82
  ]

68:                                               ; preds = %64
  %69 = load %struct.hostent*, %struct.hostent** %6, align 8
  %70 = getelementptr inbounds %struct.hostent, %struct.hostent* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 4
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.hostent*, %struct.hostent** %6, align 8
  %76 = getelementptr inbounds %struct.hostent, %struct.hostent* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = bitcast i8* %77 to %struct.in_addr*
  %79 = bitcast %struct.in_addr* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.in_addr* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @default_ct, i32 0, i32 4) to i8*), i8* align 8 %79, i64 8, i1 false)
  %80 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @default_ct, i32 0, i32 0), align 8
  %81 = call i32 @memset(i8* %80, i32 0, i32 16)
  br label %102

82:                                               ; preds = %64
  %83 = load %struct.hostent*, %struct.hostent** %6, align 8
  %84 = getelementptr inbounds %struct.hostent, %struct.hostent* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 16
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @default_ct, i32 0, i32 4, i32 0), align 8
  %89 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @default_ct, i32 0, i32 0), align 8
  %90 = load %struct.hostent*, %struct.hostent** %6, align 8
  %91 = getelementptr inbounds %struct.hostent, %struct.hostent* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @memcpy(i8* %89, i8* %92, i32 16)
  br label %102

94:                                               ; preds = %64
  %95 = load i32, i32* @stderr, align 4
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %97 = load %struct.hostent*, %struct.hostent** %6, align 8
  %98 = getelementptr inbounds %struct.hostent, %struct.hostent* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %96, i32 %99)
  %101 = call i32 @exit(i32 2) #4
  unreachable

102:                                              ; preds = %82, %68
  %103 = load i64, i64* @verbosity, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = load i32, i32* @stderr, align 4
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @default_ct, i32 0, i32 1), align 8
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @default_ct, i32 0, i32 4, i32 0), align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @default_ct, i32 0, i32 4, i32 0), align 8
  %113 = call i8* @inet_ntoa(i64 %112)
  br label %117

114:                                              ; preds = %105
  %115 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @default_ct, i32 0, i32 0), align 8
  %116 = call i8* @show_ipv6(i8* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = phi i8* [ %113, %111 ], [ %116, %114 ]
  %119 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %107, i32 %108, i8* %118)
  br label %120

120:                                              ; preds = %117, %102
  %121 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %122 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @LRF_BROKEN, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load i64, i64* @double_send_recv, align 8
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 2, i32 1
  %134 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %135 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %137 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @default_ct, i32 0, i32 3), align 8
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @default_ct, i32 0, i32 2), align 4
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %165, %120
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %142 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %168

145:                                              ; preds = %139
  %146 = call i32 @create_target(%struct.TYPE_5__* @default_ct, i32 0)
  %147 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %148 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  %153 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %154 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %145
  %162 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %163 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %162, i32 0, i32 1
  store i32 0, i32* %163, align 4
  store i32 -1, i32* %2, align 4
  br label %169

164:                                              ; preds = %145
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %139

168:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %161
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.hostent* @kdb_gethostbyname(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @inet_ntoa(i64) #1

declare dso_local i8* @show_ipv6(i8*) #1

declare dso_local i32 @create_target(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

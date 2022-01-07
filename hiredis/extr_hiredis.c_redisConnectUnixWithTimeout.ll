; ModuleID = '/home/carl/AnghaBench/hiredis/extr_hiredis.c_redisConnectUnixWithTimeout.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_hiredis.c_redisConnectUnixWithTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.TYPE_4__ = type { %struct.timeval*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @redisConnectUnixWithTimeout(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store i8* %0, i8** %4, align 8
  %7 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @REDIS_OPTIONS_SET_UNIX(%struct.TYPE_4__* %5, i8* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.timeval* %3, %struct.timeval** %10, align 8
  %11 = call i32* @redisConnectWithOptions(%struct.TYPE_4__* %5)
  ret i32* %11
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @REDIS_OPTIONS_SET_UNIX(%struct.TYPE_4__*, i8*) #2

declare dso_local i32* @redisConnectWithOptions(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

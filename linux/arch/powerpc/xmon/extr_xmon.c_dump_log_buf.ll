; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_dump_log_buf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_dump_log_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmsg_dumper = type { i32 }

@__const.dump_log_buf.dumper = private unnamed_addr constant %struct.kmsg_dumper { i32 1 }, align 4
@bus_error_jmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error dumping printk buffer!\0A\00", align 1
@catch_memory_errors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_log_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_log_buf() #0 {
  %1 = alloca %struct.kmsg_dumper, align 4
  %2 = alloca [128 x i8], align 16
  %3 = alloca i64, align 8
  %4 = bitcast %struct.kmsg_dumper* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.kmsg_dumper* @__const.dump_log_buf.dumper to i8*), i64 4, i1 false)
  %5 = load i32, i32* @bus_error_jmp, align 4
  %6 = call i64 @setjmp(i32 %5) #4
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %27

10:                                               ; preds = %0
  store i32 1, i32* @catch_memory_errors, align 4
  %11 = call i32 (...) @sync()
  %12 = call i32 @kmsg_dump_rewind_nolock(%struct.kmsg_dumper* %1)
  %13 = call i32 (...) @xmon_start_pagination()
  br label %14

14:                                               ; preds = %18, %10
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %16 = call i64 @kmsg_dump_get_line_nolock(%struct.kmsg_dumper* %1, i32 0, i8* %15, i32 128, i64* %3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 %19
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %14

23:                                               ; preds = %14
  %24 = call i32 (...) @xmon_end_pagination()
  %25 = call i32 (...) @sync()
  %26 = call i32 @__delay(i32 200)
  store i32 0, i32* @catch_memory_errors, align 4
  br label %27

27:                                               ; preds = %23, %8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @sync(...) #3

declare dso_local i32 @kmsg_dump_rewind_nolock(%struct.kmsg_dumper*) #3

declare dso_local i32 @xmon_start_pagination(...) #3

declare dso_local i64 @kmsg_dump_get_line_nolock(%struct.kmsg_dumper*, i32, i8*, i32, i64*) #3

declare dso_local i32 @xmon_end_pagination(...) #3

declare dso_local i32 @__delay(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

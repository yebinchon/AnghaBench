; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_init_default.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_init_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16 }

@now = common dso_local global i32 0, align 4
@pid = common dso_local global i32 0, align 4
@rpc_port = common dso_local global i64 0, align 8
@PID = common dso_local global %struct.TYPE_2__ zeroinitializer, align 2
@dynamic_data_buffer_size = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@maxconn = common dso_local global i32 0, align 4
@MAX_CONNECTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_default() #0 {
  %1 = call i32 (...) @dl_set_default_handlers()
  %2 = call i64 @time(i32* null)
  %3 = trunc i64 %2 to i32
  store i32 %3, i32* @now, align 4
  %4 = call i32 (...) @getpid()
  store i32 %4, i32* @pid, align 4
  %5 = load i64, i64* @rpc_port, align 8
  %6 = trunc i64 %5 to i16
  store i16 %6, i16* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PID, i32 0, i32 0), align 2
  store i32 67108864, i32* @dynamic_data_buffer_size, align 4
  %7 = call i32 (...) @init_dyn_data()
  %8 = load i8*, i8** @username, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @maxconn, align 4
  %12 = load i32, i32* @MAX_CONNECTIONS, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = call i64 (...) @geteuid()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1000, i32* @maxconn, align 4
  br label %18

18:                                               ; preds = %17, %14, %10, %0
  %19 = load i32, i32* @maxconn, align 4
  %20 = add nsw i32 %19, 16
  %21 = call i64 @raise_file_rlimit(i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* @maxconn, align 4
  %25 = add nsw i32 %24, 16
  %26 = call i32 (i32, i8*, ...) @vkprintf(i32 -1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %18
  %29 = call i32 @aes_load_pwd_file(i32* null)
  %30 = load i8*, i8** @username, align 8
  %31 = call i64 @change_user(i8* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i8*, i8** @username, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i8*, i8** @username, align 8
  br label %39

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i8* [ %37, %36 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %38 ]
  %41 = call i32 (i32, i8*, ...) @vkprintf(i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %28
  ret void
}

declare dso_local i32 @dl_set_default_handlers(...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @raise_file_rlimit(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @aes_load_pwd_file(i32*) #1

declare dso_local i64 @change_user(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

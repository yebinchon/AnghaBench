; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-recover.c_new_request1.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-recover.c_new_request1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@next_ad_id = common dso_local global i64 0, align 8
@max_ad_id = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%d ads complete, exiting\0A\00", align 1
@new_request1.buff = internal global [256 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"get ad_info%d\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Requested information about ad %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @new_request1(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load i64, i64* @next_ad_id, align 8
  %5 = load i64, i64* @max_ad_id, align 8
  %6 = icmp sgt i64 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @stderr, align 4
  %12 = load i64, i64* @max_ad_id, align 8
  %13 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %12)
  br label %14

14:                                               ; preds = %10, %7
  %15 = call i32 @exit(i32 0) #3
  unreachable

16:                                               ; preds = %1
  %17 = load i64, i64* @next_ad_id, align 8
  %18 = call i32 @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @new_request1.buff, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.connection*, %struct.connection** %2, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 0
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @write_out(i32* %20, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @new_request1.buff, i64 0, i64 0), i32 %21)
  %23 = load %struct.connection*, %struct.connection** %2, align 8
  %24 = call i32 @flush_connection_output(%struct.connection* %23)
  %25 = load i32, i32* @verbosity, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load i32, i32* @stderr, align 4
  %29 = load i64, i64* @next_ad_id, align 8
  %30 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %27, %16
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @flush_connection_output(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

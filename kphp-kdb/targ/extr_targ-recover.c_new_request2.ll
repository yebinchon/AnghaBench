; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-recover.c_new_request2.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-recover.c_new_request2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@new_request2.buff = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [17 x i8] c"get ad_query%d\0D\0A\00", align 1
@next_ad_id = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Requested query for ad %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @new_request2(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load i32, i32* @next_ad_id, align 4
  %5 = call i32 @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @new_request2.buff, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.connection*, %struct.connection** %2, align 8
  %7 = getelementptr inbounds %struct.connection, %struct.connection* %6, i32 0, i32 0
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @write_out(i32* %7, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @new_request2.buff, i64 0, i64 0), i32 %8)
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = call i32 @flush_connection_output(%struct.connection* %10)
  %12 = load i32, i32* @verbosity, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* @next_ad_id, align 4
  %17 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @flush_connection_output(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_send_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_send_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.connection*)* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"cannot find connection to target %s:%d for query %s, dropping query\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"send query '%s'\0A\00", align 1
@sent_queries = common dso_local global i32 0, align 4
@precise_now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_to(%struct.conn_target* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.conn_target*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.connection*, align 8
  store %struct.conn_target* %0, %struct.conn_target** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %12 = call %struct.connection* @get_target_connection(%struct.conn_target* %11)
  store %struct.connection* %12, %struct.connection** %10, align 8
  %13 = load %struct.connection*, %struct.connection** %10, align 8
  %14 = icmp eq %struct.connection* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %4
  %16 = load i32, i32* @verbosity, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %21 = icmp ne %struct.conn_target* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %24 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @conv_addr(i32 %26, i32 0)
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i8* [ %27, %22 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %28 ]
  %31 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %32 = icmp ne %struct.conn_target* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %35 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 0, %37 ]
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %39, i8* %40)
  br label %42

42:                                               ; preds = %38, %15
  store i32 -1, i32* %5, align 4
  br label %75

43:                                               ; preds = %4
  %44 = load i32, i32* @verbosity, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.connection*, %struct.connection** %10, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 1
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @write_out(i32* %52, i8* %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* @sent_queries, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @sent_queries, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %50
  %65 = load %struct.connection*, %struct.connection** %10, align 8
  %66 = call %struct.TYPE_4__* @MCC_FUNC(%struct.connection* %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %67, align 8
  %69 = load %struct.connection*, %struct.connection** %10, align 8
  %70 = call i32 %68(%struct.connection* %69)
  br label %71

71:                                               ; preds = %64, %50
  %72 = load i32, i32* @precise_now, align 4
  %73 = load %struct.connection*, %struct.connection** %10, align 8
  %74 = getelementptr inbounds %struct.connection, %struct.connection* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %42
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.connection* @get_target_connection(%struct.conn_target*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @conv_addr(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @MCC_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

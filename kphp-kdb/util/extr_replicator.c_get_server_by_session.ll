; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_get_server_by_session.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_get_server_by_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repl_server_status = type { i32, %struct.repl_server_status* }

@PARTNER_HASH_SIZE = common dso_local global i32 0, align 4
@ServerHash = common dso_local global %struct.repl_server_status** null, align 8
@active_repl_servers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.repl_server_status* @get_server_by_session(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.repl_server_status*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.repl_server_status**, align 8
  %8 = alloca %struct.repl_server_status*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PARTNER_HASH_SIZE, align 4
  %11 = srem i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @PARTNER_HASH_SIZE, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.repl_server_status**, %struct.repl_server_status*** @ServerHash, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.repl_server_status*, %struct.repl_server_status** %19, i64 %21
  store %struct.repl_server_status** %22, %struct.repl_server_status*** %7, align 8
  %23 = load %struct.repl_server_status**, %struct.repl_server_status*** %7, align 8
  %24 = load %struct.repl_server_status*, %struct.repl_server_status** %23, align 8
  store %struct.repl_server_status* %24, %struct.repl_server_status** %8, align 8
  br label %25

25:                                               ; preds = %48, %18
  %26 = load %struct.repl_server_status*, %struct.repl_server_status** %8, align 8
  %27 = icmp ne %struct.repl_server_status* %26, null
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load %struct.repl_server_status*, %struct.repl_server_status** %8, align 8
  %30 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.repl_server_status*, %struct.repl_server_status** %8, align 8
  %39 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %38, i32 0, i32 1
  %40 = load %struct.repl_server_status*, %struct.repl_server_status** %39, align 8
  %41 = load %struct.repl_server_status**, %struct.repl_server_status*** %7, align 8
  store %struct.repl_server_status* %40, %struct.repl_server_status** %41, align 8
  %42 = load %struct.repl_server_status*, %struct.repl_server_status** %8, align 8
  %43 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %42, i32 0, i32 1
  store %struct.repl_server_status* null, %struct.repl_server_status** %43, align 8
  %44 = load %struct.repl_server_status*, %struct.repl_server_status** %8, align 8
  %45 = call i32 @zfree(%struct.repl_server_status* %44, i32 16)
  store %struct.repl_server_status* null, %struct.repl_server_status** %3, align 8
  br label %81

46:                                               ; preds = %34
  %47 = load %struct.repl_server_status*, %struct.repl_server_status** %8, align 8
  store %struct.repl_server_status* %47, %struct.repl_server_status** %3, align 8
  br label %81

48:                                               ; preds = %28
  %49 = load %struct.repl_server_status*, %struct.repl_server_status** %8, align 8
  %50 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %49, i32 0, i32 1
  store %struct.repl_server_status** %50, %struct.repl_server_status*** %7, align 8
  %51 = load %struct.repl_server_status**, %struct.repl_server_status*** %7, align 8
  %52 = load %struct.repl_server_status*, %struct.repl_server_status** %51, align 8
  store %struct.repl_server_status* %52, %struct.repl_server_status** %8, align 8
  br label %25

53:                                               ; preds = %25
  %54 = load i32, i32* %5, align 4
  %55 = icmp sge i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  store %struct.repl_server_status* null, %struct.repl_server_status** %3, align 8
  br label %81

61:                                               ; preds = %53
  %62 = call %struct.repl_server_status* @zmalloc0(i32 16)
  store %struct.repl_server_status* %62, %struct.repl_server_status** %8, align 8
  %63 = load %struct.repl_server_status**, %struct.repl_server_status*** @ServerHash, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.repl_server_status*, %struct.repl_server_status** %63, i64 %65
  %67 = load %struct.repl_server_status*, %struct.repl_server_status** %66, align 8
  %68 = load %struct.repl_server_status*, %struct.repl_server_status** %8, align 8
  %69 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %68, i32 0, i32 1
  store %struct.repl_server_status* %67, %struct.repl_server_status** %69, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.repl_server_status*, %struct.repl_server_status** %8, align 8
  %72 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.repl_server_status*, %struct.repl_server_status** %8, align 8
  %74 = load %struct.repl_server_status**, %struct.repl_server_status*** @ServerHash, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.repl_server_status*, %struct.repl_server_status** %74, i64 %76
  store %struct.repl_server_status* %73, %struct.repl_server_status** %77, align 8
  %78 = load i32, i32* @active_repl_servers, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @active_repl_servers, align 4
  %80 = load %struct.repl_server_status*, %struct.repl_server_status** %8, align 8
  store %struct.repl_server_status* %80, %struct.repl_server_status** %3, align 8
  br label %81

81:                                               ; preds = %61, %60, %46, %37
  %82 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  ret %struct.repl_server_status* %82
}

declare dso_local i32 @zfree(%struct.repl_server_status*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.repl_server_status* @zmalloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

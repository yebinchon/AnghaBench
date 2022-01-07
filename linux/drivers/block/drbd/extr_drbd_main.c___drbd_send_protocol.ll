; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c___drbd_send_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c___drbd_send_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32, i32, %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.p_protocol = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.net_conf = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"--dry-run is not supported by peer\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CF_DISCARD_MY_DATA = common dso_local global i32 0, align 4
@CF_DRY_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__drbd_send_protocol(%struct.drbd_connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drbd_socket*, align 8
  %7 = alloca %struct.p_protocol*, align 8
  %8 = alloca %struct.net_conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %12 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %11, i32 0, i32 2
  store %struct.drbd_socket* %12, %struct.drbd_socket** %6, align 8
  %13 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %14 = load %struct.drbd_socket*, %struct.drbd_socket** %6, align 8
  %15 = call %struct.p_protocol* @__conn_prepare_command(%struct.drbd_connection* %13, %struct.drbd_socket* %14)
  store %struct.p_protocol* %15, %struct.p_protocol** %7, align 8
  %16 = load %struct.p_protocol*, %struct.p_protocol** %7, align 8
  %17 = icmp ne %struct.p_protocol* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %129

21:                                               ; preds = %2
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %24 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.net_conf* @rcu_dereference(i32 %25)
  store %struct.net_conf* %26, %struct.net_conf** %8, align 8
  %27 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %28 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %21
  %32 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %33 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 92
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %39 = call i32 @drbd_err(%struct.drbd_connection* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %129

42:                                               ; preds = %31, %21
  store i32 56, i32* %9, align 4
  %43 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %44 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 87
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %49 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strlen(i32 %50)
  %52 = add nsw i64 %51, 1
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %47, %42
  %58 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %59 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = load %struct.p_protocol*, %struct.p_protocol** %7, align 8
  %63 = getelementptr inbounds %struct.p_protocol, %struct.p_protocol* %62, i32 0, i32 6
  store i8* %61, i8** %63, align 8
  %64 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %65 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @cpu_to_be32(i32 %66)
  %68 = load %struct.p_protocol*, %struct.p_protocol** %7, align 8
  %69 = getelementptr inbounds %struct.p_protocol, %struct.p_protocol* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %71 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @cpu_to_be32(i32 %72)
  %74 = load %struct.p_protocol*, %struct.p_protocol** %7, align 8
  %75 = getelementptr inbounds %struct.p_protocol, %struct.p_protocol* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %77 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @cpu_to_be32(i32 %78)
  %80 = load %struct.p_protocol*, %struct.p_protocol** %7, align 8
  %81 = getelementptr inbounds %struct.p_protocol, %struct.p_protocol* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %83 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @cpu_to_be32(i32 %84)
  %86 = load %struct.p_protocol*, %struct.p_protocol** %7, align 8
  %87 = getelementptr inbounds %struct.p_protocol, %struct.p_protocol* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  store i32 0, i32* %10, align 4
  %88 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %89 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %57
  %93 = load i32, i32* @CF_DISCARD_MY_DATA, align 4
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %92, %57
  %97 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %98 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @CF_DRY_RUN, align 4
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %10, align 4
  %107 = call i8* @cpu_to_be32(i32 %106)
  %108 = load %struct.p_protocol*, %struct.p_protocol** %7, align 8
  %109 = getelementptr inbounds %struct.p_protocol, %struct.p_protocol* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %111 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sge i32 %112, 87
  br i1 %113, label %114, label %122

114:                                              ; preds = %105
  %115 = load %struct.p_protocol*, %struct.p_protocol** %7, align 8
  %116 = getelementptr inbounds %struct.p_protocol, %struct.p_protocol* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %119 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @strcpy(i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %114, %105
  %123 = call i32 (...) @rcu_read_unlock()
  %124 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %125 = load %struct.drbd_socket*, %struct.drbd_socket** %6, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @__conn_send_command(%struct.drbd_connection* %124, %struct.drbd_socket* %125, i32 %126, i32 %127, i32* null, i32 0)
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %122, %36, %18
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.p_protocol* @__conn_prepare_command(%struct.drbd_connection*, %struct.drbd_socket*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @drbd_err(%struct.drbd_connection*, i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @__conn_send_command(%struct.drbd_connection*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

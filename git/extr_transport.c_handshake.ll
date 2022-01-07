; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_handshake.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }
%struct.transport = type { i32, %struct.git_transport_data* }
%struct.git_transport_data = type { i32, i32, i32, i32, i32* }
%struct.argv_array = type { i32 }
%struct.packet_reader = type { i64 }

@PACKET_READ_CHOMP_NEWLINE = common dso_local global i32 0, align 4
@PACKET_READ_GENTLE_ON_EOF = common dso_local global i32 0, align 4
@PACKET_READ_DIE_ON_ERR_PACKET = common dso_local global i32 0, align 4
@REF_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown protocol version\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"buffer must be empty at the end of handshake()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref* (%struct.transport*, i32, %struct.argv_array*, i32)* @handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref* @handshake(%struct.transport* %0, i32 %1, %struct.argv_array* %2, i32 %3) #0 {
  %5 = alloca %struct.transport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.argv_array*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.git_transport_data*, align 8
  %10 = alloca %struct.ref*, align 8
  %11 = alloca %struct.packet_reader, align 8
  store %struct.transport* %0, %struct.transport** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.argv_array* %2, %struct.argv_array** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.transport*, %struct.transport** %5, align 8
  %13 = getelementptr inbounds %struct.transport, %struct.transport* %12, i32 0, i32 1
  %14 = load %struct.git_transport_data*, %struct.git_transport_data** %13, align 8
  store %struct.git_transport_data* %14, %struct.git_transport_data** %9, align 8
  store %struct.ref* null, %struct.ref** %10, align 8
  %15 = load %struct.transport*, %struct.transport** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @connect_setup(%struct.transport* %15, i32 %16)
  %18 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %19 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PACKET_READ_CHOMP_NEWLINE, align 4
  %24 = load i32, i32* @PACKET_READ_GENTLE_ON_EOF, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PACKET_READ_DIE_ON_ERR_PACKET, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @packet_reader_init(%struct.packet_reader* %11, i32 %22, i32* null, i32 0, i32 %27)
  %29 = call i32 @discover_version(%struct.packet_reader* %11)
  %30 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %31 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %33 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %68 [
    i32 128, label %35
    i32 129, label %51
    i32 130, label %51
    i32 131, label %66
  ]

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %40 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.argv_array*, %struct.argv_array** %7, align 8
  %46 = load %struct.transport*, %struct.transport** %5, align 8
  %47 = getelementptr inbounds %struct.transport, %struct.transport* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @get_remote_refs(i32 %43, %struct.packet_reader* %11, %struct.ref** %10, i32 %44, %struct.argv_array* %45, i32 %48)
  br label %50

50:                                               ; preds = %38, %35
  br label %68

51:                                               ; preds = %4, %4
  %52 = load %struct.transport*, %struct.transport** %5, align 8
  %53 = call i32 @die_if_server_options(%struct.transport* %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @REF_NORMAL, align 4
  br label %59

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %62 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %61, i32 0, i32 3
  %63 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %64 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %63, i32 0, i32 2
  %65 = call i32 @get_remote_heads(%struct.packet_reader* %11, %struct.ref** %10, i32 %60, i32* %62, i32* %64)
  br label %68

66:                                               ; preds = %4
  %67 = call i32 @BUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %4, %59, %50
  %69 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %70 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %11, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 @BUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %68
  %77 = load %struct.ref*, %struct.ref** %10, align 8
  ret %struct.ref* %77
}

declare dso_local i32 @connect_setup(%struct.transport*, i32) #1

declare dso_local i32 @packet_reader_init(%struct.packet_reader*, i32, i32*, i32, i32) #1

declare dso_local i32 @discover_version(%struct.packet_reader*) #1

declare dso_local i32 @get_remote_refs(i32, %struct.packet_reader*, %struct.ref**, i32, %struct.argv_array*, i32) #1

declare dso_local i32 @die_if_server_options(%struct.transport*) #1

declare dso_local i32 @get_remote_heads(%struct.packet_reader*, %struct.ref**, i32, i32*, i32*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

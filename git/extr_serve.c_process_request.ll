; ModuleID = '/home/carl/AnghaBench/git/extr_serve.c_process_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_serve.c_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }
%struct.packet_reader = type { i32, i32 }
%struct.protocol_capability = type { i32 (i32, %struct.argv_array.0*, %struct.packet_reader.1*)* }
%struct.argv_array.0 = type opaque
%struct.packet_reader.1 = type opaque

@PROCESS_REQUEST_KEYS = common dso_local global i32 0, align 4
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@PACKET_READ_CHOMP_NEWLINE = common dso_local global i32 0, align 4
@PACKET_READ_GENTLE_ON_EOF = common dso_local global i32 0, align 4
@PACKET_READ_DIE_ON_ERR_PACKET = common dso_local global i32 0, align 4
@PROCESS_REQUEST_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Should have already died when seeing EOF\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown capability '%s'\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"no command requested\00", align 1
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @process_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_request() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.packet_reader, align 4
  %4 = alloca %struct.argv_array, align 4
  %5 = alloca %struct.protocol_capability*, align 8
  %6 = load i32, i32* @PROCESS_REQUEST_KEYS, align 4
  store i32 %6, i32* %2, align 4
  %7 = bitcast %struct.argv_array* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  store %struct.protocol_capability* null, %struct.protocol_capability** %5, align 8
  %8 = load i32, i32* @PACKET_READ_CHOMP_NEWLINE, align 4
  %9 = load i32, i32* @PACKET_READ_GENTLE_ON_EOF, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PACKET_READ_DIE_ON_ERR_PACKET, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @packet_reader_init(%struct.packet_reader* %3, i32 0, i32* null, i32 0, i32 %12)
  %14 = call i32 @packet_reader_peek(%struct.packet_reader* %3)
  %15 = icmp eq i32 %14, 130
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %76

17:                                               ; preds = %0
  %18 = load i32, i32* @PACKET_READ_GENTLE_ON_EOF, align 4
  %19 = xor i32 %18, -1
  %20 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %61, %17
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @PROCESS_REQUEST_DONE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = call i32 @packet_reader_peek(%struct.packet_reader* %3)
  switch i32 %28, label %61 [
    i32 130, label %29
    i32 128, label %31
    i32 129, label %51
    i32 131, label %58
  ]

29:                                               ; preds = %27
  %30 = call i32 @BUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %29
  %32 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %3, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @is_command(i32 %33, %struct.protocol_capability** %5)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %3, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @is_valid_capability(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %31
  %42 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %3, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @argv_array_push(%struct.argv_array* %4, i32 %43)
  br label %49

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %3, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = call i32 @packet_reader_read(%struct.packet_reader* %3)
  br label %61

51:                                               ; preds = %27
  %52 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %4, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 1, i32* %1, align 4
  br label %76

56:                                               ; preds = %51
  %57 = load i32, i32* @PROCESS_REQUEST_DONE, align 4
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %27
  %59 = call i32 @packet_reader_read(%struct.packet_reader* %3)
  %60 = load i32, i32* @PROCESS_REQUEST_DONE, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %27, %58, %56, %49
  br label %23

62:                                               ; preds = %23
  %63 = load %struct.protocol_capability*, %struct.protocol_capability** %5, align 8
  %64 = icmp ne %struct.protocol_capability* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62
  %68 = load %struct.protocol_capability*, %struct.protocol_capability** %5, align 8
  %69 = getelementptr inbounds %struct.protocol_capability, %struct.protocol_capability* %68, i32 0, i32 0
  %70 = load i32 (i32, %struct.argv_array.0*, %struct.packet_reader.1*)*, i32 (i32, %struct.argv_array.0*, %struct.packet_reader.1*)** %69, align 8
  %71 = load i32, i32* @the_repository, align 4
  %72 = bitcast %struct.argv_array* %4 to %struct.argv_array.0*
  %73 = bitcast %struct.packet_reader* %3 to %struct.packet_reader.1*
  %74 = call i32 %70(i32 %71, %struct.argv_array.0* %72, %struct.packet_reader.1* %73)
  %75 = call i32 @argv_array_clear(%struct.argv_array* %4)
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %67, %55, %16
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @packet_reader_init(%struct.packet_reader*, i32, i32*, i32, i32) #2

declare dso_local i32 @packet_reader_peek(%struct.packet_reader*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @is_command(i32, %struct.protocol_capability**) #2

declare dso_local i32 @is_valid_capability(i32) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i32) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @packet_reader_read(%struct.packet_reader*) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

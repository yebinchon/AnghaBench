; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_send_acks.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_send_acks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_writer = type { i32 }
%struct.oid_array = type { i32, i32* }
%struct.object_array = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"acknowledgments\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NAK\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ACK %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_writer*, %struct.oid_array*, %struct.object_array*, %struct.object_array*)* @send_acks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_acks(%struct.packet_writer* %0, %struct.oid_array* %1, %struct.object_array* %2, %struct.object_array* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.packet_writer*, align 8
  %7 = alloca %struct.oid_array*, align 8
  %8 = alloca %struct.object_array*, align 8
  %9 = alloca %struct.object_array*, align 8
  %10 = alloca i32, align 4
  store %struct.packet_writer* %0, %struct.packet_writer** %6, align 8
  store %struct.oid_array* %1, %struct.oid_array** %7, align 8
  store %struct.object_array* %2, %struct.object_array** %8, align 8
  store %struct.object_array* %3, %struct.object_array** %9, align 8
  %11 = load %struct.packet_writer*, %struct.packet_writer** %6, align 8
  %12 = call i32 (%struct.packet_writer*, i8*, ...) @packet_writer_write(%struct.packet_writer* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %14 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.packet_writer*, %struct.packet_writer** %6, align 8
  %19 = call i32 (%struct.packet_writer*, i8*, ...) @packet_writer_write(%struct.packet_writer* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %24 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.packet_writer*, %struct.packet_writer** %6, align 8
  %29 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %30 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @oid_to_hex(i32* %34)
  %36 = call i32 (%struct.packet_writer*, i8*, ...) @packet_writer_write(%struct.packet_writer* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load %struct.object_array*, %struct.object_array** %8, align 8
  %42 = load %struct.object_array*, %struct.object_array** %9, align 8
  %43 = call i64 @ok_to_give_up(%struct.object_array* %41, %struct.object_array* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.packet_writer*, %struct.packet_writer** %6, align 8
  %47 = call i32 (%struct.packet_writer*, i8*, ...) @packet_writer_write(%struct.packet_writer* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %49

48:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @packet_writer_write(%struct.packet_writer*, i8*, ...) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @ok_to_give_up(%struct.object_array*, %struct.object_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

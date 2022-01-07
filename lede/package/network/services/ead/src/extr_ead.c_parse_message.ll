; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_parse_message.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_parse_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8* }
%struct.ead_packet = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@state = common dso_local global i32 0, align 4
@EAD_INSTANCE_MASK = common dso_local global i32 0, align 4
@EAD_INSTANCE_SHIFT = common dso_local global i32 0, align 4
@instance = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"discarding packet: message too small\0A\00", align 1
@EAD_MAGIC = common dso_local global i32 0, align 4
@pktbuf = common dso_local global %struct.TYPE_7__* null, align 8
@nid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"sending response to packet type %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ead_packet*, i32)* @parse_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_message(%struct.ead_packet* %0, i32 %1) #0 {
  %3 = alloca %struct.ead_packet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.ead_packet*, i32, i32*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ead_packet* %0, %struct.ead_packet** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 8, i32* %6, align 4
  %9 = load i32, i32* @state, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.ead_packet*, %struct.ead_packet** %3, align 8
  %11 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ntohl(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 133
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @state, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %117

22:                                               ; preds = %17, %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 132
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.ead_packet*, %struct.ead_packet** %3, align 8
  %27 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohs(i32 %29)
  %31 = load i32, i32* @EAD_INSTANCE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @EAD_INSTANCE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @instance, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %117

40:                                               ; preds = %25, %22
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %64 [
    i32 132, label %42
    i32 128, label %43
    i32 133, label %48
    i32 131, label %49
    i32 130, label %54
    i32 129, label %59
  ]

42:                                               ; preds = %40
  store i32 (%struct.ead_packet*, i32, i32*)* @handle_ping, i32 (%struct.ead_packet*, i32, i32*)** %5, align 8
  br label %65

43:                                               ; preds = %40
  store i32 (%struct.ead_packet*, i32, i32*)* @handle_set_username, i32 (%struct.ead_packet*, i32, i32*)** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  br label %65

48:                                               ; preds = %40
  store i32 (%struct.ead_packet*, i32, i32*)* @handle_get_prime, i32 (%struct.ead_packet*, i32, i32*)** %5, align 8
  br label %65

49:                                               ; preds = %40
  store i32 (%struct.ead_packet*, i32, i32*)* @handle_send_a, i32 (%struct.ead_packet*, i32, i32*)** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 4
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  br label %65

54:                                               ; preds = %40
  store i32 (%struct.ead_packet*, i32, i32*)* @handle_send_auth, i32 (%struct.ead_packet*, i32, i32*)** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  br label %65

59:                                               ; preds = %40
  store i32 (%struct.ead_packet*, i32, i32*)* @handle_send_cmd, i32 (%struct.ead_packet*, i32, i32*)** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  br label %65

64:                                               ; preds = %40
  br label %117

65:                                               ; preds = %59, %54, %49, %48, %43, %42
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %117

71:                                               ; preds = %65
  %72 = load i32, i32* @EAD_MAGIC, align 4
  %73 = call i8* @htonl(i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pktbuf, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  store i8* %73, i8** %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i8* @htonl(i32 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pktbuf, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i8* %79, i8** %82, align 8
  %83 = load i32, i32* @nid, align 4
  %84 = call i32 @htons(i32 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pktbuf, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  %88 = load %struct.ead_packet*, %struct.ead_packet** %3, align 8
  %89 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pktbuf, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pktbuf, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load i32 (%struct.ead_packet*, i32, i32*)*, i32 (%struct.ead_packet*, i32, i32*)** %5, align 8
  %99 = load %struct.ead_packet*, %struct.ead_packet** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 %98(%struct.ead_packet* %99, i32 %100, i32* %7)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %71
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pktbuf, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ntohl(i32 %109)
  %111 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %110)
  %112 = load %struct.ead_packet*, %struct.ead_packet** %3, align 8
  %113 = call i32 @ead_send_packet_clone(%struct.ead_packet* %112)
  br label %114

114:                                              ; preds = %103, %71
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @set_state(i32 %115)
  br label %117

117:                                              ; preds = %114, %69, %64, %39, %21
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @handle_ping(%struct.ead_packet*, i32, i32*) #1

declare dso_local i32 @handle_set_username(%struct.ead_packet*, i32, i32*) #1

declare dso_local i32 @handle_get_prime(%struct.ead_packet*, i32, i32*) #1

declare dso_local i32 @handle_send_a(%struct.ead_packet*, i32, i32*) #1

declare dso_local i32 @handle_send_auth(%struct.ead_packet*, i32, i32*) #1

declare dso_local i32 @handle_send_cmd(%struct.ead_packet*, i32, i32*) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ead_send_packet_clone(%struct.ead_packet*) #1

declare dso_local i32 @set_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dhcp/extr_dhcp-proto.c_show_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dhcp/extr_dhcp-proto.c_show_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"Pad\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Subnet Mask\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Time Offset\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Router\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Time Server\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Name Server\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Domain Name Server\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Log Server\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Cookie Server\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"LPR Server\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Impress Server\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Resource Location Server\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Host Name\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Boot File Size\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Merit Dump File\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Domain Name\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Swap Server\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Root Path\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Extensions Path\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"IP Forwarding\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Non-Local Source Routing\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Policy Filter\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Maximum Datagram Reassembly Size\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Default IP Time-to-live\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"Path MTU Aging Timeout\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"Path MTU Plateau Table\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Interface MTU Option\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"All Subnets are Local\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Broadcast Address\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"Perform Mask Discovery\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Mask Supplier\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Perform Router Discovery\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Router Solicitation Address\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Static Route\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Trailer Encapsulation\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"ARP Cache Timeout\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"Ethernet Encapsulation\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"TCP Default TTL\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"TCP Keepalive Interval\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"TCP Keepalive Garbage\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"Network Information Service Domain\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"Network Information Servers\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"Network Time Protocol Servers\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"Vendor Specific\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"NetBIOS over TCP/IP Name Server\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"NetBIOS over TCP/IP Datagram Distribution Server\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"NetBIOS over TCP/IP Node Type\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"NetBIOS over TCP/IP Scope\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"X Window System Font Server\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"X Window System Display Manager\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"Network Information Service+ Domain\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"Network Information Service+ Servers\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"Mobile IP Home Agent\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"Simple Mail Transport Protocol Server\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"Post Office Protocol Server\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"Network News Transport Protocol Server\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"Default World Wide Web Server\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"Default Finger Server\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"Default Internet Relay Chat Server\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"StreetTalk Server\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"StreetTalk Directory Assistance Server\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"Requested IP Address\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"IP Address Lease Time\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"Overload\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"TFTP server name\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"Bootfile name\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"DHCP Message Type\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"Server Identifier\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"Parameter Request List\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"Message\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"Maximum DHCP Message Size\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"Renewal Time Value\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"Rebinding Time Value\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"Vendor class identifier\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"Client-identifier\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"Domain Search\00", align 1
@show_option.s = internal global [128 x i8] zeroinitializer, align 16
@.str.77 = private unnamed_addr constant [18 x i8] c"Unknown opcode %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @show_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @show_option(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %82 [
    i32 160, label %5
    i32 189, label %6
    i32 140, label %7
    i32 134, label %8
    i32 147, label %9
    i32 133, label %10
    i32 173, label %11
    i32 191, label %12
    i32 181, label %13
    i32 198, label %14
    i32 180, label %15
    i32 185, label %16
    i32 149, label %17
    i32 186, label %18
    i32 202, label %19
    i32 176, label %20
    i32 192, label %21
    i32 139, label %22
    i32 148, label %23
    i32 187, label %24
    i32 182, label %25
    i32 162, label %26
    i32 154, label %27
    i32 178, label %28
    i32 195, label %29
    i32 158, label %30
    i32 157, label %31
    i32 184, label %32
    i32 204, label %33
    i32 200, label %34
    i32 156, label %35
    i32 179, label %36
    i32 155, label %37
    i32 146, label %38
    i32 143, label %39
    i32 132, label %40
    i32 203, label %41
    i32 188, label %42
    i32 138, label %43
    i32 136, label %44
    i32 137, label %45
    i32 167, label %46
    i32 168, label %47
    i32 163, label %48
    i32 130, label %49
    i32 171, label %50
    i32 172, label %51
    i32 170, label %52
    i32 169, label %53
    i32 128, label %54
    i32 129, label %55
    i32 166, label %56
    i32 165, label %57
    i32 174, label %58
    i32 144, label %59
    i32 153, label %60
    i32 164, label %61
    i32 194, label %62
    i32 197, label %63
    i32 196, label %64
    i32 141, label %65
    i32 142, label %66
    i32 150, label %67
    i32 183, label %68
    i32 161, label %69
    i32 135, label %70
    i32 201, label %71
    i32 193, label %72
    i32 145, label %73
    i32 159, label %74
    i32 175, label %75
    i32 177, label %76
    i32 151, label %77
    i32 152, label %78
    i32 131, label %79
    i32 199, label %80
    i32 190, label %81
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %85

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %85

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %85

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %85

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %85

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %85

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %85

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %85

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %85

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %85

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %85

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %85

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %85

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %85

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %85

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %85

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %85

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %85

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %85

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %85

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %85

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %85

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %85

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %85

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %85

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %85

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %85

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %85

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %85

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %85

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %85

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %85

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %85

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %85

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %85

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %85

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %85

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %85

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %85

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %85

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %85

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %85

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %85

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %85

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %85

50:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i64 0, i64 0), i8** %2, align 8
  br label %85

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.46, i64 0, i64 0), i8** %2, align 8
  br label %85

52:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i64 0, i64 0), i8** %2, align 8
  br label %85

53:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0), i8** %2, align 8
  br label %85

54:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0), i8** %2, align 8
  br label %85

55:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i64 0, i64 0), i8** %2, align 8
  br label %85

56:                                               ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.51, i64 0, i64 0), i8** %2, align 8
  br label %85

57:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i64 0, i64 0), i8** %2, align 8
  br label %85

58:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0), i8** %2, align 8
  br label %85

59:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.54, i64 0, i64 0), i8** %2, align 8
  br label %85

60:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0), i8** %2, align 8
  br label %85

61:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i64 0, i64 0), i8** %2, align 8
  br label %85

62:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i64 0, i64 0), i8** %2, align 8
  br label %85

63:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i64 0, i64 0), i8** %2, align 8
  br label %85

64:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0), i8** %2, align 8
  br label %85

65:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i64 0, i64 0), i8** %2, align 8
  br label %85

66:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.61, i64 0, i64 0), i8** %2, align 8
  br label %85

67:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0), i8** %2, align 8
  br label %85

68:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i64 0, i64 0), i8** %2, align 8
  br label %85

69:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), i8** %2, align 8
  br label %85

70:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8** %2, align 8
  br label %85

71:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0), i8** %2, align 8
  br label %85

72:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i64 0, i64 0), i8** %2, align 8
  br label %85

73:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i64 0, i64 0), i8** %2, align 8
  br label %85

74:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0), i8** %2, align 8
  br label %85

75:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i64 0, i64 0), i8** %2, align 8
  br label %85

76:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i64 0, i64 0), i8** %2, align 8
  br label %85

77:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0), i8** %2, align 8
  br label %85

78:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i64 0, i64 0), i8** %2, align 8
  br label %85

79:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i64 0, i64 0), i8** %2, align 8
  br label %85

80:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0), i8** %2, align 8
  br label %85

81:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.76, i64 0, i64 0), i8** %2, align 8
  br label %85

82:                                               ; preds = %1
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @show_option.s, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i64 0, i64 0), i32 %83)
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @show_option.s, i64 0, i64 0), i8** %2, align 8
  br label %85

85:                                               ; preds = %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %86 = load i8*, i8** %2, align 8
  ret i8* %86
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

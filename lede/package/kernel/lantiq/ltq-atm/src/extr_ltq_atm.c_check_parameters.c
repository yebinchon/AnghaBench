
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_RX_FRAME_EXTRA_BYTES ;
 int MAX_TX_FRAME_EXTRA_BYTES ;
 int aal5_fill_pattern ;
 int aal5r_max_packet_size ;
 int aal5r_min_packet_size ;
 int aal5s_max_packet_size ;
 int aal5s_min_packet_size ;
 int dma_rx_clp1_descriptor_threshold ;
 int dma_rx_descriptor_length ;
 int dma_tx_descriptor_length ;
 int qsb_tau ;
 int qsb_tstep ;
 scalar_t__ write_descriptor_delay ;

__attribute__((used)) static inline void check_parameters(void)
{

 if ( qsb_tau < 1 )
  qsb_tau = 1;
 if ( qsb_tstep < 1 )
  qsb_tstep = 1;
 else if ( qsb_tstep > 4 )
  qsb_tstep = 4;
 else if ( qsb_tstep == 3 )
  qsb_tstep = 2;





 if ( write_descriptor_delay < 0 )
  write_descriptor_delay = 0;

 if ( aal5_fill_pattern < 0 )
  aal5_fill_pattern = 0;
 else
  aal5_fill_pattern &= 0xFF;



 if ( aal5r_max_packet_size < 0 )
  aal5r_max_packet_size = 0;
 else if ( aal5r_max_packet_size >= 65535 - MAX_RX_FRAME_EXTRA_BYTES )
  aal5r_max_packet_size = 65535 - MAX_RX_FRAME_EXTRA_BYTES;
 if ( aal5r_min_packet_size < 0 )
  aal5r_min_packet_size = 0;
 else if ( aal5r_min_packet_size > aal5r_max_packet_size )
  aal5r_min_packet_size = aal5r_max_packet_size;
 if ( aal5s_max_packet_size < 0 )
  aal5s_max_packet_size = 0;
 else if ( aal5s_max_packet_size >= 65535 - MAX_TX_FRAME_EXTRA_BYTES )
  aal5s_max_packet_size = 65535 - MAX_TX_FRAME_EXTRA_BYTES;
 if ( aal5s_min_packet_size < 0 )
  aal5s_min_packet_size = 0;
 else if ( aal5s_min_packet_size > aal5s_max_packet_size )
  aal5s_min_packet_size = aal5s_max_packet_size;

 if ( dma_rx_descriptor_length < 2 )
  dma_rx_descriptor_length = 2;
 if ( dma_tx_descriptor_length < 2 )
  dma_tx_descriptor_length = 2;
 if ( dma_rx_clp1_descriptor_threshold < 0 )
  dma_rx_clp1_descriptor_threshold = 0;
 else if ( dma_rx_clp1_descriptor_threshold > dma_rx_descriptor_length )
  dma_rx_clp1_descriptor_threshold = dma_rx_descriptor_length;

 if ( dma_tx_descriptor_length < 2 )
  dma_tx_descriptor_length = 2;
}
